#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>

void printSent() {
  static const char *subs[] = {
  "You", "I", "They", "He", "She"
  };
  static const char *adjs[] = {
  "Cool", "Gay", "Retarded"
  };
  static const char *nouns[] = {
  "Cock", "Drugs", "Children"
  };
  static const char *verbs2[] = {
  "Like", "Eat", "Kill"
  };
  char append;
  const char *s = subs[rand() % (sizeof(subs)/sizeof(char*))];
  const char *a = adjs[rand() % (sizeof(adjs)/sizeof(char*))];
  const char *n = nouns[rand() % (sizeof(nouns)/sizeof(char*))];
  const char *v = verbs2[rand() % (sizeof(verbs2)/sizeof(char*))];
  char *verb1;

  if (!strcmp(s, subs[0]) || !strcmp(s, subs[2])){
    verb1 = "are";
    append = 0;
  }
  else if (!strcmp(s, subs[1])){
    verb1 = "am";
    append = 0;
  }
  else {
    verb1 = "is";
    append = 's';
  }

  printf("%s %s %s and %s %s%c %s\n",
      s, verb1, a,
      s, v, append, n
    );

}

int main () {
  srand(time(NULL));
  int sentNum;
  printf("How many sentences?\n");
  scanf("%d", &sentNum);
  for (int i = 0; i < sentNum; i++){
  printSent();
  }
}
