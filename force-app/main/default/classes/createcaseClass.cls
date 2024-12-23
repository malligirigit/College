public class createcaseClass {
    public static void createcase() {
        list<case> caselist= new list<case>();
        
        for(integer i=1;i<=10;i++) {
            case c = new case();
            c.status='new'    ;
            c.type='Electronic';
            c.reason='Installation';
            c.priority='MEdium';
            caselist.add(C);
        }
        
        insert caselist;
        

    }
    
}