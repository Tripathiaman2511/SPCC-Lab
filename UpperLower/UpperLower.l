%{
    int Uppertotal=0;
    int Lowertotal=0;
%}
%%
[a-z] {printf("Is a LowerCase\n");Lowertotal++;}
[A-Z] {printf("Is a UpperCase\n");Uppertotal++;}
%%
int yywrap(){}
int main(){
    printf("Enter the character or String:\n");
    yylex();
    printf("\nTotal UpperCase: %d \nTotal LowerCase= %d",Uppertotal,Lowertotal);
    return 0;
}