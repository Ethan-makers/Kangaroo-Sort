void setup() {
  int[]  A = {5,3,4,6,7,10,2,8,9,1};
  printArrayOnOneLine(A);
  A = KangarooSort(A);
  printArrayOnOneLine(A);
}

void printArrayOnOneLine(int[] ARRAY) {
  for (int i=0; i < ARRAY.length; i++) {
    print(ARRAY[i]+" ");
  }
  println();
}

int[] KangarooSort(int[] a) {
  int j;
  for (int h=1; h<a.length; h++) {
    j = h;
    while(j>0 && a[j-1] > a[j]) {
      int z = a[j];
      a[j] = a[j-1];
      a[j-1] = z;
      
      j--;
    }
  }
  return a;
}
