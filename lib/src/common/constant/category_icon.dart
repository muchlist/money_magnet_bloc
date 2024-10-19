const String iconSalary = '💼';
const String iconGrants = '💸';
const String iconRefund = '🔄';
const String iconSale = '💰';
const String iconRental = '🗓️';
const String iconBonus = '🎁';
const String iconInvestmentReturns = '📈';
const String iconOtherIncome = '➕';

const String iconBaby = '🍼';
const String iconBeauty = '🪷';
const String iconBill = '🧾';
const String iconCar = '🚙';
const String iconClothing = '👕';
const String iconEducation = '📚';
const String iconElectronic = '📺';
const String iconEntertainment = '🍿';
const String iconFood = '🍙';
const String iconHealth = '🩺';
const String iconHome = '🏠';
const String iconInsurance = '🔖';
const String iconShopping = '🛍️';
const String iconSocial = '👥';
const String iconSport = '⚽';
const String iconTax = '✂️';
const String iconTelephone = '☎️';
const String iconInternet = '🌍';
const String iconTransfort = '🚈';
const String iconWork = '👔';
const String iconDonation = '🤝';
const String iconInvestment = '🏦';
const String iconFamilyFriends = '👪';
const String iconPets = '🐾';
const String iconTechnology = '🖥️';
const String iconDefault = '💵';

String getIconCategory(int iconIndex) {
  return iconCategoryMap[iconIndex] ?? iconDefault;
}

List<String> getIconCategoryList() {
  return [
    iconSalary,
    iconGrants,
    iconRefund,
    iconSale,
    iconRental,
    iconBonus,
    iconInvestmentReturns,
    iconOtherIncome,
    iconBaby,
    iconBeauty,
    iconBill,
    iconCar,
    iconClothing,
    iconEducation,
    iconElectronic,
    iconEntertainment,
    iconFood,
    iconHealth,
    iconHome,
    iconInsurance,
    iconShopping,
    iconSocial,
    iconSport,
    iconTax,
    iconTelephone,
    iconInternet,
    iconTransfort,
    iconWork,
    iconDefault,
    iconDonation,
    iconInvestment,
    iconFamilyFriends,
    iconPets,
    iconTechnology,
  ];
}

const Map<int, String> iconCategoryMap = {
  1: iconSalary,
  2: iconGrants,
  3: iconRefund,
  4: iconSale,
  5: iconRental,
  6: iconBonus,
  7: iconInvestmentReturns,
  8: iconOtherIncome,
  31: iconBaby,
  32: iconBeauty,
  33: iconBill,
  34: iconCar,
  35: iconClothing,
  36: iconEducation,
  37: iconElectronic,
  38: iconEntertainment,
  39: iconFood,
  40: iconHealth,
  41: iconHome,
  42: iconInsurance,
  43: iconShopping,
  44: iconSocial,
  45: iconSport,
  46: iconTax,
  47: iconTelephone,
  48: iconInternet,
  50: iconTransfort,
  51: iconWork,
  52: iconDonation,
  53: iconInvestment,
  54: iconFamilyFriends,
  55: iconPets,
  56: iconTechnology,
  57: iconDefault
};
