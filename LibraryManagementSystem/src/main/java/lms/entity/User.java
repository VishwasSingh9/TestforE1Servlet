package lms.entity;
import java.time.LocalDate;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "Userss")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "user_id")
	@SequenceGenerator(name = "user_id", initialValue = 1, allocationSize = 1)
	private Long userId;
	private String name;
	private String email;
	private long phone;
	private LocalDate dob;
	private String password;

	@OneToMany(mappedBy = "user")
	private List<Record> records;

}
