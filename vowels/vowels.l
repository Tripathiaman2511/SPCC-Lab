%{
int vow_count=0;
int cons_count=0;
%}

%%
[aeiouAEIOU] {printf("Is a Vowel\t");vow_count++;}
[a-zA-Z] {printf("Is a Consonent\t");cons_count++;}
%%

int yywrap(){return 1;}
int main()
{
printf("Enter the String:\n");
yylex();
printf("\nVowel count= %d\n",vow_count);
printf("Consonent count= %d",cons_count);
return 0;
}