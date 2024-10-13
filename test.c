#include <stdio.h>
int main() {
	int s1;
	printf("Enter size1 : ");
	scanf("%d", &s1);
	
	int s2;
	printf("Enter size2 : ");
	scanf("%d", &s2);
	
	int i;
	int j;

	int arr1[s1];
	int arr2[s2];
	
	for (i = 0; i < s1; i++) {
		//printf("arr1 Enter element at index %d: ", i);
		scanf("%d", &arr1[i]);
	}
	
	for (j = 0; j < s2; j++) {
		//printf("arr2 Enter element at index %d: ", i);
		scanf("%d", &arr2[j]);
	}

	int totalSize = s2 + s1;

    int ctr = 0;
    for (int i = s1; i < totalSize; i++) {
        arr1[i] = arr2[ctr++];
    }

	for (i = 0; i < totalSize; i++) {
		printf("%d ", arr1[i]);
	}
	// int arr3[totalSize];
	
	// for (i = 0; i < s1; i++) {
	// 	arr3[i] = arr1[i];
	// }
	
    // int ctr = 0;

	// for (i = s1; i < totalSize; i++) {
	// 	arr3[i] = arr2[ctr++];
	// }
	
	// for (i = 0; i < totalSize; i++) {
	// 	printf("%d ", arr1[i]);
	// }
}