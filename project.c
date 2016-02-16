#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>

void printSent() {
  static const char *subs[] = {
  "You", "I", "They", "He", "She"
  };
  static const char *adjs[] = {
  "Cool", "Nice", "Stupid"
  };
  const char *s = subs[rand() % 5];
  const char *a = adjs[rand() % 3];
  char *verb;
  if (!strcmp(s, subs[0]) || !strcmp(s, subs[2])){
    verb = "are";
  }
  else if (!strcmp(s, subs[1])){
    verb = "am";
  }
  else {
    verb = "is";
  }
  printf("%s %s %s\n", s, verb, a);

}

int main () {
  srand(time(NULL));
  for (int i = 0; i < 100; i++){
  printSent();
  }
}
