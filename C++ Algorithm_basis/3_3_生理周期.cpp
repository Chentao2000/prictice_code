
/******************************************************************************

3.3 例题 ：生理周期：

问题 描述 ： 人生来就有三个生理周期： 
                分别是 体力周期 ， 情感周期， 智力周期， 他们的周期长度分别是 
                23 天 28 天 33 天，
            你的任务是 给定一个从当年第一个天开始的天数，输出给定时间开始
            （不包括给定时间）下一次三个高峰在同一天的时间，距离给定时间的天数
            例如 ： 给定时间是 10 ，下次出现三个高峰同一天时间是 12 ，则输出 2
            注意 ： 这里不是 3
            
输入数据 ： 
            输入包括多组数据，每一组数据由4个整数，数据以 -1 -1 -1 -1 结束
            对于 4 个整数 p e i 和 d p e i 分别表示体力 ，情感智力 高峰出现的时间
            （时间当年在第一天开始计算）d 是给定的时间，可能小于 p e 或 i 
            给定时间按是非负的并且小于等于365，所求是按小于或等于21252

输出要求：从给定时间起，下一个三个高峰同一天时间（距离给定时间的天数）
                        
                        
// 解题思路：  1. 最简单思路 是 ：从给定的时间开始，遍历到 21 522 找出最早出现的某一天
            在这一天 体力 情感 和 智力高峰 均出现过，
            即满足 （j-p）% 23 == 0 (j - e )%28 ==0  (j - i)%33 ==  0
            
               2. 仔细思考一下不难发现，检索时可以利用已经发现的高峰值加速搜索的过程
               例如 第 102 天是 出现体力的高峰值，那么第 104 105 106 天都是不可能的体力，
               情感，智力 高峰出现的时间，因此可以直接挑到 103 + 23 天  = 125 天
               这个优化策略可以概括为 ：若某项高峰值时间已经出现了 ，则高峰值的出现周期
               可以作为搜索步长
               
*******************************************************************************/


#include <cstdio>
#include <memory.h>
#include <cstring>

using namespace std;
int main(){
    int p ,e ,i ,d,count = 0;
    int j,k;
    for(;;)
    {
        scanf("%d%d%d%d",&p,&e,&i,&d);
        if(p != -1){
            count ++;
            
            for(j = d+1 ; j< 21252;j++)
                if((j-p)%23 == 0)break;
            for(;j<21252; j=j + 23)
                if((j-e)%28 == 0)break;
            for(; j <21252;j=j + 23*28)
                if((j - i)%33 == 0)break;
            printf("Case %d : the next triple break occurs in %d days \n",count,j - d);
        }
        else 
             break;
    }
            return 0;
}












