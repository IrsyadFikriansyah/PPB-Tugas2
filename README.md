| **Name** | **NRP** |
| ---- | --- |
| Irsyad Fikriansyah Ramadhan | 5025211149 |

# What is *ObjectBox*? 

ObjectBox is a lightweight, resource-efficient database designed for mobile, IoT, and embedded devices. It is transactionally safe, reliably persists and synchronizes data, and is easy to integrate and use. **- <a href="https://objectbox.io/">objectbox.io</a>**

## Getting Started

To use ObjectBox in your Flutter project, run the following in your terminal:

```shell
flutter pub add objectbox objectbox_flutter_libs:any
flutter pub add --dev build_runner objectbox_generator:any
```

### Defining a Data Model

1. Create a file like `lib/models/model.dart`.
2. Import the ObjectBox package:

```dart
import 'package:objectbox/objectbox.dart';
```

3. Annotate each data class with `@Entity()`.
4. Every entity must include an `@Id()` field, typically named id.

Example:

```dart
@Entity()
class Employee {
  @Id()
  int id; // Auto-incremented primary key

  String name;
  int age;

  Employee({
    this.id = 0, 
    required this.name, 
    required this.age
    });
}
```

Note: when using ObjectBox in a Flutter app (mobile or desktop), the data is stored locally on the device — like a lightweight database file.

<hr>

References:

ios emulator:
- https://youtu.be/343PpFsTDvM

ObjectBox
- https://docs.objectbox.io/
- https://youtu.be/6YPSQPS_bhU
- https://youtu.be/BBlr8F8m9lo