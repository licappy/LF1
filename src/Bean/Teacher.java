package Bean;

public class Teacher {

    private String name;
    private String pwd;
    private String type;

    public String getType() {
        return type;
    }
    public void setName(String name) {
        this.name = name;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }


    public Teacher(String name, String pwd, String type) {
        this.name = name;
        this.pwd = pwd;
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public String getPwd(){
        return pwd;
    }

    public void setType(String type) {
        this.type = type;
    }
}

