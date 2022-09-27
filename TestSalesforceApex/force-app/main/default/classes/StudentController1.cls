public class StudentController1 {
    public String student{get;set;}
    public List<String> studentlist{get;set;}
        public StudentController1()
        {
            studentlist = new List<String>();
            studentlist.add('a');            
            studentlist.add('b');
            student ='abc';
          }
    public void fetch()
    {
        student='pqr';
        studentlist.add('c');
    }
}