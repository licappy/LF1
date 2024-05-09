package Bean;

public class Admin {
    private String name;
    private String pwd;
    private String type;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public Admin(String name, String pwd, String type) {
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
}
