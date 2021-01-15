#include <iostream>
#include<cstring>
#include<cstdio>
#include<cstdlib>

using namespace std;
struct node
{
    string key;
    node* left;
    node* right;
};
struct nd
{
    double date;
    nd* next;
};
nd*Head;
void Push_nd(double date)
{
    nd*temp=new nd;
    temp->date=date;
    temp->next=Head;
    Head=temp;
    return;
}
void Print_nd()
{
    nd* q=Head;
    while(q)
    {
        cout<<"\nОтвет:\t"<<q->date;
        q=q->next;
    }
    return;
}
int Priority (char c)
{
    switch(c)
    {
        case '%':return 5;
        case '^':return 4;
        case '+':case '-':return 2;
        case '*':case '/':return 3;
    }
    return 1000;
}
double Pop()
{
    if(Head==0)
        return 0;
    double i=Head->date;
    Head=Head->next;
    return i;
}
node* MakeTree(string *Term,int first, int last)
{
    int nest=0;
    node* Tree=new node;
    if(first==last)
    {
        Tree->key=Term[first];
        Tree->left=Tree->right=0;
        return Tree;
    }
    int minprt=100;
    int k;
    for(int i=first;i<=last;i++)
    {
        int size_perem=Term[i].size();
        int prt;
        if(size_perem>1)
        {
            prt=100;
            if(prt<=minprt)
            {
                minprt=prt;
                k=i;
            }
        }
        else
        {   char c=Term[i][0];
            if(c=='(')
            {
                nest++; continue;
            }
            if(c==')')
            {
                nest--; continue;
            }
            if(nest>0)
            {
                continue;
            }
            prt=Priority(c);
            if(prt<=minprt)
            {
                minprt=prt;
                k=i;
            }
        }
    }
    if (minprt=100&&Term[first][0]=='('&&Term[last][0]==')')
        return MakeTree(Term,first+1,last-1);
    Tree->key=Term[k];
    Tree->left=MakeTree(Term,first,k-1);
    Tree->right=MakeTree(Term,k+1,last);
    return Tree;
}
void LPK(node* Tree)
{
    if(!Tree)
    {
        return;
    }
    LPK(Tree->left);
    LPK(Tree->right);
    cout<<Tree->key<<"|" ;
    if(Tree->key.size()>1||isdigit(Tree->key[0]))
    {
        char* date;
        date=new char[Tree->key.size()];
        for(int i=0;i<Tree->key.size();i++)
        {
            date[i]=Tree->key[i];
        }
        Push_nd(atof(date));
        delete date;
    }
    if(Tree->key=="+")
    {
        double x1=Pop();
        double x2=Pop();
        Push_nd(x1+x2);
    }
    if(Tree->key=="-")
    {
        double x1=Pop();
        double x2=Pop();
        Push_nd(x2-x1);
    }
    if(Tree->key=="/")
    {
        double x1=Pop();
        double x2=Pop();
        Push_nd(x2/x1);
    }
    if(Tree->key=="*")
    {
        double x1=Pop();
        double x2=Pop();
        Push_nd(x1*x2);
    }
    if(Tree->key=="^")
    {
        double x1=Pop();
        double x2=Pop();
        Push_nd(pow(x2,x1));
    }
    if(Tree->key=="%")
    {
        double x1=Pop();
        double x2=Pop();
        Push_nd(fmod(x2,x1));
    }
    return;
}
int SizeTree(string s,int n)
{
    int p=0;
    for(int i=0;i<n;i++)
    {
        while(isalnum(s[i])||s[i]=='_'||s[i]=='.'||s[i]==',')
        {
            i++;
        }
        if(s[i]=='('||s[i]==')')
        {
            continue;
        }
        p++;
    }
    for(int i=0;i<n;i++)
    {
        while(!isalnum(s[i])&&s[i]!='_'&&s[i]!='.'&&s[i]!=',')
        {
            i++;
            p++;
        }
    }
    return p;
}
string Input_perem(string s)
{
    cout<<"Введите значение переменной:"<<s<<endl;
    string name_perem;
    cin>>name_perem;
    return name_perem;
}
void MakeTerm(string *Term,int n,string s,int *k)
{
    for(int i=0;i<n;i++)
    {
        if(isalnum(s[i])||s[i]=='_'||s[i]=='.'||s[i]==',')
        {
            char name [100]="";
            int z=0;
            while(isalnum(s[i])||s[i]=='_'||s[i]=='.'||s[i]==',')
            {
                name[z]=s[i];
                z++;
                i++;
            }
            string name1=name;
            int size_name=name1.size();
            int date_or_name=1;
            if(size_name==1)
            {
                if(isdigit(name[0]))
                {
                    Term[(*k)]=name;
                    (*k)++;
                }
                else
                {
                    string name_perem=Input_perem(name1);
                    char *date;
                    date=new char[name_perem.size()];
                    for(int i=0;i<name_perem.size();i++)
                    {
                        date[i]=name_perem[i];
                    }
                    Term[(*k)]=date;
                    (*k)++;
                    delete date;
                }
            }
            else
            {   date_or_name=0;
                for(int i=0;i<size_name;i++)
                {
                    if(isdigit(name[i])||name[i]==','||name[i]=='.')
                    {
                        date_or_name++;
                    }
                }
                if(date_or_name!=size_name)
                {
                    string name_perem=Input_perem(name1);
                    char * date;
                    date = new char [name_perem.size()];
                    for(int i=0;i<name_perem.size();i++)
                    {
                        date[i]=name_perem[i];
                    }
                    Term[(*k)]=date;
                    (*k)++;
                    delete date;
                }
                else
                {
                    Term[(*k)]=name;
                    (*k)++;
                }

            }
        }
        if(s[i]=='('||s[i]==')')
        {
            Term[(*k)]=s[i];
            (*k)++;
        }
        if(s[i]=='+'||s[i]=='-'||s[i]=='*'||s[i]=='/')
        {
            Term[(*k)]=s[i];
            (*k)++;
        }
    }
    return;
}
int main()
{
    setlocale(LC_ALL, "Russian");
    int n;
    int size_term=0;
    int k=0;
    string s;
    cout<<"Введите уравнение: ";
    cin>>s;
    n=s.size();
    size_term=SizeTree(s,n);
    string*Term=new string[size_term];
    MakeTerm(Term,n,s,&k);
    node* Tree=MakeTree(Term,0,size_term-1);
    LPK(Tree);
    Print_nd();
    return 0;
}
