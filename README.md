| Name | NRP |
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

1. Create a new Dart file, e.g., `model.dart`.
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