import java.util.Scanner;

class Student extends Person {
    private String school;
    private String studentID;
    private int yearStarted;
     
    public void setSchool(String school) {
        this.school = school;
    }
    
    public void setStudentID(String studentID){
        this.studentID = studentID;
    }
    
    public void setYearStarted(int yearStarted){
        this.yearStarted = yearStarted;
    }
    
     public String getStudentID() {
        return studentID;
    }
    
    public int getYearStarted() {
        return yearStarted;
    }
    
    public String getSchool() {
        return school;
    }
    
    public void displayDetails() {
        System.out.print("Student from "+ getSchool() + " with ID "+ getStudentID() + " is " + getFirstName()+ " "+ getLastName()+ " who started on "+ getYearStarted()+".");
    }

}
class Person {
    private String firstName;
    private String lastName;
    
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setLastName(String lastName){
        this.lastName = lastName;
    }
    
    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }
    
}

class Main {
    public static void main(String[] args) {
        Student info = new Student();
        
        Scanner sc = new Scanner(System.in);
        
        System.out.print("School: ");
        info.setSchool(sc.nextLine());
        
        System.out.print("Student ID: ");
        info.setStudentID(sc.nextLine());
        
        System.out.print("First Name: ");
        info.setFirstName(sc.nextLine());
        
        System.out.print("Last Name: ");
        info.setLastName(sc.nextLine());

        System.out.print("Year Started: ");
        info.setYearStarted(sc.nextInt());
        
        System.out.println();
        info.displayDetails();
        
    }
}