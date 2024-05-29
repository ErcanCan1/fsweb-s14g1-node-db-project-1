const accountsModel = require("./accounts-model");
const yup = require("yup");

const accountsShema = yup.object().shape({
  name:yup.string()
  .required("name alanı zorunludur")
  .min(3,"minimum 3 karakter girmelisiniz")
  .max(100,"maksimum 100 karakter olamalı"),
  budget:yup.number("Budget alanı number olmalıdır")
  .required("Budget alanı zorunludur.")
  .min(0,"Bütçe negtif değer olamaz")
  .max(1000000,"bütçe bir milyondan büyük olamaz")
});

exports.checkAccountPayload = (req, res, next) => {
  // KODLAR BURAYA
  // Not: Validasyon için Yup(şu an yüklü değil!) kullanabilirsiniz veya kendiniz manuel yazabilirsiniz.
}

exports.checkAccountNameUnique = (req, res, next) => {
  // KODLAR BURAYA
}

exports.checkAccountId = (req, res, next) => {
  // KODLAR BURAYA
}
