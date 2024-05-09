
package Bean;

import java.sql.Date;

public class MessBoar {
    private String name;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    private String type;
    private String title;
    private String message;
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name=name;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title=title;
    }
    public String getMessage() {
        return message;
    }
    public void setMessage(String message) {
        this.message=message;
    }
}
