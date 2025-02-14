String? validateInput({
  required String val,
  required int min,
  required int max,
  required String type,
}) {
  if (val.isEmpty) {
    return "لا يمكن أن يكون فارغًا";
  }

  if (val.length < min) {
    return "يجب أن يكون أكبر من $min أحرف";
  }

  if (val.length > max) {
    return "يجب أن يكون أقل من $max أحرف";
  }

  switch (type) {
    case 'email':
      if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(val)) {
        return "البريد الإلكتروني غير صالح";
      }
      break;

    case 'phone':
      if (!RegExp(r'^\+?[0-9]{7,15}$').hasMatch(val)) {
        return "رقم الهاتف غير صالح";
      }
      break;

    case 'username':
    case 'firstname':
    case 'lastname':
      if (!RegExp(r'^[a-zA-Z0-9_]{3,}$').hasMatch(val)) {
        return "اسم المستخدم غير صالح";
      }
      break;

    case 'number':
      if (double.tryParse(val) == null) {
        return "يجب أن يكون رقمًا صالحًا";
      }
      break;

    case 'pdfFile':
      if (!val.toLowerCase().endsWith('.pdf')) {
        return "الملف يجب أن يكون بصيغة PDF";
      }
      break;

    default:
      return null;
  }

  return null;
}
