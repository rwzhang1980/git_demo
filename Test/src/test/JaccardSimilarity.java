package test;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class JaccardSimilarity {
	
	public static void main(String[] args) {
		JaccardSimilarity jc = new JaccardSimilarity();
		double d = jc.CalculateTextSim("��ծ��������Ȩ���ܼ�", "��ծ�͹ɶ�Ȩ���ܼ�");
		System.out.println(d);
		
		System.out.println(jc.cosVector("�� ծ �� �� �� �� Ȩ �� �� ��", "�� ծ �� �� �� Ȩ �� �� ��"));
		System.out.println(jc.cosVector("��ծ �� ������ Ȩ�� �ܼ�", "��ծ �� �ɶ� Ȩ�� �ܼ�"));
	}
	
	 //�ж�ָ���ַ���str�Ƿ���Map������������  
    public boolean isIn(Map<String,int[]> wordWeight,String str){  
        for (String key : wordWeight.keySet()) {//����map������key  
            if(key.equals(str))  
                return true;  
        }  
        return false;  
    } 
	
	public float cosVector(String sentence1,String sentence2){  
        String []wordsOfSen1=new String[64];//��һ��ĵ��ʼ�  
        String []wordsOfSen2=new String[64];//�ڶ���ĵ��ʼ�  
        wordsOfSen1=sentence1.split(" ");  
        wordsOfSen2=sentence2.split(" ");  
        //���ʵĳ���Ƶ��������wordWeight[word][0]����"word"�ڵ�һ���г��ֵ�Ƶ��  
        Map <String,int[]> wordWeight=new HashMap<String ,int[]>();  
          
        //���仰�ĵ���Ƶ��ͳ��  
        for(int i=0;i<wordsOfSen1.length;i++){  
            if(!isIn(wordWeight,wordsOfSen1[i]))  
                wordWeight.put(wordsOfSen1[i], new int[]{1,0});  
            else  
                wordWeight.get(wordsOfSen1[i])[0]+=1;  
        }  
        for(int i=0;i<wordsOfSen2.length;i++){  
            if(!isIn(wordWeight,wordsOfSen2[i]))  
                wordWeight.put(wordsOfSen2[i], new int[]{0,1});  
            else  
                wordWeight.get(wordsOfSen2[i])[1]+=1;  
        }  
        //�����Ѿ����������ʵ�Ƶ����������(����������)����ʽ��ʾ������  
        //wordWeight.size����������ά��  
        //wordWeight[word][0]���ǵ���"word"�ڵ�һ���г��ֵ�Ƶ��  
        //�������ø�������������  
        float neiji=(float) 0.0;//���������������ڻ�  
        float modeOfSen1=(float)0.0;//����1������ģdeƽ��  
        float modeOfSen2=(float)0.0;//����2������ģdeƽ��  
        for(String key:wordWeight.keySet()){  
            neiji+=wordWeight.get(key)[0]*wordWeight.get(key)[1];  
            modeOfSen1+=Math.pow(wordWeight.get(key)[0], 2);  
            modeOfSen2+=Math.pow(wordWeight.get(key)[1], 2);  
              
        }  
        return (float) (neiji/(Math.sqrt(modeOfSen1)*Math.sqrt(modeOfSen2)));  
    }

	public JaccardSimilarity() {
	}

	public boolean codeFilter(int code) {
		if ((code < 19968 || code > 40869) && !(code >= '0' && code <= '9') && !(code >= 'a' && code <= 'z')
				&& !(code >= 'A' && code <= 'Z')) {
			return false;
		}
		return true;
	}

	public double CalculateTextSim(String content, String compareContent) {
		if (null == content || null == compareContent)
			return 0.0;
		Map<String, Integer> cntMap = new HashMap<String, Integer>();
		Set<String> cntSet = new HashSet<String>();
		Map<String, Integer> cmpCntMap = new HashMap<String, Integer>();
		Set<String> cmpCntSet = new HashSet<String>();

		for (int i = 0; i != content.length(); i++) {
			int k = 0;
			if (codeFilter(content.codePointAt(i))) {
				if (cntMap.containsKey("" + content.charAt(i))) {
					Integer count = cntMap.get("" + content.charAt(i));
					count = count + 1;
					cntMap.put("" + content.charAt(i), count);
					k = count;
				} else {
					cntMap.put("" + content.charAt(i), new Integer(1));
					k = 1;
				}
				String tmpString = content.charAt(i) + "" + k;
				cntSet.add(tmpString);
			}
		}

		for (int i = 0; i != compareContent.length(); i++) {
			int k = 0;
			if (codeFilter(compareContent.codePointAt(i))) {
				if (cmpCntMap.containsKey("" + compareContent.charAt(i))) {
					Integer count = cmpCntMap.get("" + compareContent.charAt(i));
					count = count + 1;
					cmpCntMap.put("" + compareContent.charAt(i), count);
					k = count;
				} else {
					cmpCntMap.put("" + compareContent.charAt(i), new Integer(1));
					k = 1;
				}

				String tmpString = compareContent.charAt(i) + "" + k;
				cmpCntSet.add(tmpString);
			}
		}

		Set<String> tmpSet = new HashSet<String>();
		tmpSet.addAll(cntSet);
		cntSet.retainAll(cmpCntSet);
		double intCount = cntSet.size();

		tmpSet.addAll(cmpCntSet);

		if (tmpSet.size() == 0)
			return 0;
		double uniCount = tmpSet.size();

		return intCount / uniCount;
	}
	
	private void test(){
		
	}

	public void t(){
		
	}
}