import 'package:flutter/material.dart';
import 'package:taxperts_web_final/Components/footer.dart';
import 'package:taxperts_web_final/colors.dart';
import 'package:intl/intl.dart';
import '../Components/calclulator_components.dart';
import '../Components/navBar.dart';

class CalculatorDesktop extends StatefulWidget {
  const CalculatorDesktop({super.key});

  @override
  State<CalculatorDesktop> createState() => _CalculatorDesktopState();
}

class _CalculatorDesktopState extends State<CalculatorDesktop> {
  int _selectedIndex = 1;
  int _visibleContainerIndex = 1;

  void _navigateTo(int index, String routeName) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pushNamed(context, routeName);
  }

  bool log = true;
  bool visibility = false;
  int test = 0;
  int grossSalaryId = 0;
  int profitsFromBusinessId = 0;
  int interestIncomeId = 0;
  int dividendIncomeId = 0;
  int rentIncomeId = 0;
  int otherIncomeId = 0;
  int healthMedicalExpensesId = 0;
  int medicalInsurancePremiumId = 0;
  int localEducationSelfId = 0;
  int localEducationChildrenId = 0;
  int housingLoanInterestId = 0;
  int pensionContributionId = 0;
  int purchaseSharedDebentureTreasuryId = 0;
  int bondsTreasuryBillsId = 0;
  int donationToApprovedCharityId = 0;
  int installmentPaymentId = 0;
  int donationToGovernmentId = 0;
  int quarterId = 0;
  int professionalServiceId = 0;
  int royaltyId = 0;
  int aitWhtId = 0;

  int grossSalaryRadioButtonItem = 0;
  int profitsFromBusinessRadioButtonItem = 0;
  int interestIncomeRadioButtonItem = 0;
  int dividendIncomeRadioButtonItem = 0;
  int rentIncomeRadioButtonItem = 0;
  int otherIncomeRadioButtonItem = 0;
  int healthMedicalExpensesRadioButtonItem = 0;
  int medicalInsurancePremiumRadioButtonItem = 0;
  int localEducationSelfRadioButtonItem = 0;
  int localEducationChildrenRadioButtonItem = 0;
  int housingLoanInterestRadioButtonItem = 0;
  int pensionContributionRadioButtonItem = 0;
  int purchaseSharedDebentureTreasuryRadioButtonItem = 0;
  int bondsTreasuryBillsRadioButtonItem = 0;
  int donationToApprovedCharityRadioButtonItem = 0;
  int installmentPaymentRadioButtonItem = 0;
  int donationToGovernmentRadioButtonItem = 0;
  int quarter = 0;

  int professionalServiceRadioButtonItem = 0;
  int royaltyRadioButtonItem = 0;
  int aitWhtRadioButtonItem = 0;

  late TextEditingController grossSalary,
      profitsFromBusiness,
      interestIncome,
      dividendIncome,
      rentIncome,
      otherIncome,
      healthMedicalExpenses,
      medicalInsurancePremium,
      localEducationSelf,
      localEducationChildren,
      housingLoanInterest,
      pensionContribution,
      purchaseSharedDebentureTreasury,
      bondsTreasuryBills,
      solarInstallationCost,
      donationToApprovedCharity,
      donationToGovernment,
      installmentPayment,
      professionalServices,
      royalty,
      aitWht,
      name,
      phone,
      email;

  String grossSalaryType = "";
  String profitsFromBusinessType = "";
  String interestIncomeType = "";
  String dividendIncomeType = "";
  String rentIncomeType = "";
  String otherIncomeType = "";
  String healthMedicalExpensesType = "";
  String medicalInsurancePremiumType = "";
  String localEducationSelfType = "";
  String localEducationChildrenType = "";
  String housingLoanInterestType = "";
  String pensionContributionType = "";
  String purchaseSharedDebentureTreasuryType = "";
  String bondsTreasuryBillsType = "";
  String solarInstallationCostType = "";
  String donationToApprovedCharityType = "";
  String installmentPaymentType = "";
  String donationToGovernmentType = "";
  String finalTaxable = "";

  double annualGrossSalary = 0;
  double monthlyGrossSalary = 0;
  double annualProfitsFromBusiness = 0;
  double annualInterestIncome = 0;
  double annualInterestIncomeDeduction = 0;
  double annualDividendIncome = 0;
  double annualDividendIncomeDeduction = 0;
  double annualRentIncome = 0;
  double annualRentIncomeTax = 0;
  double annualOtherIncome = 0;
  double annualhealthMedicalExpenses = 0;
  double annualmedicalInsurancePremium = 0;
  double annuallocalEducationSelf = 0;
  double annuallocalEducationChildren = 0;
  double annualhousingLoanInterest = 0;
  double annualpensionContribution = 0;
  double annualpurchaseSharedDebentureTreasury = 0;
  double annualbondsTreasuryBills = 0;
  double annualsolarInstallationCost = 0;
  double annualdonationToApprovedCharity = 0;
  double annualdonationToGovernment = 0;
  double finalInstalment = 0;
  double finalInstalmentQuartly = 0;
  double finalInstalmentAnnually = 0;
  double personalRelief = 1200000;
  double rentIncomeDeduction = 0;
  double totalDiffrentForDonation = 0;
  double finalValueForDonationToApprovedCharity = 0;
  double finalValueFordonationToGovernment = 0;
  double expensesReliefTotal = 0;
  double taxableIncome = 0;
  double balanceTaxPayble = 0;
  double annualTaxCredit = 0;
  double totalIncomeQuartly = 0;
  double totalIncomeAnnually = 0;
  double annualProfessionalService = 0;
  double taxableIncomeAnnualyAfterDonation = 0;
  double taxableIncomeAnnualyAfterGovenmentDonation = 0;
  double annualRoyalty = 0;
  double annualRoyaltyTax = 0;
  double annualAitWht = 0;
  double totalGanisAndProfitAnnually = 0;
  double totalGanisAndProfitQuartly = 0;

  var monthlyAPIT = "";
  var taxPaybleQuartly = "";
  var taxPaybleAnnualy = "";
  var grossSalaryQuartly = "";
  var grossSalaryAnnualy = "";
  var taxDeductedAtSourceQuartly = "";
  var taxDeductedAtSourceAnnualy = "";
  var quartlyInstalmentPayment = "";
  var annuallyInstalmentPayment = "";
  var varBalanceTaxPayableForTheYear = "";
  var varBalanceTaxPayableForTheQuarter = "";
  var quarterTaxPayble = "";
  var apitDeducted = "";
  var monthlyTaxPayableVar = "";
  var balanceTaxPayableAfterAPITVar = "";
  var totalGanisAndProfitAnnuallyVar = "";
  var totalGanisAndProfitQuartlyVar = "";
  var balanceTaxPaybleFortheQuarter = "";
  var balanceTaxPaybleFortheAnnually = "";
  var varTotalTaxpayableforTheYear = "";
  var varTotalTaxpayableforTheQuarter = "";
  var varTdsAnnualy = "";
  var varTdsQuartly = "";
  var formatter = NumberFormat('###,###,###,###.##');

  @override
  void initState() {
    super.initState();
    grossSalary = TextEditingController();
    profitsFromBusiness = TextEditingController();
    interestIncome = TextEditingController();
    dividendIncome = TextEditingController();
    rentIncome = TextEditingController();
    otherIncome = TextEditingController();
    healthMedicalExpenses = TextEditingController();
    medicalInsurancePremium = TextEditingController();
    localEducationSelf = TextEditingController();
    localEducationChildren = TextEditingController();
    housingLoanInterest = TextEditingController();
    pensionContribution = TextEditingController();
    purchaseSharedDebentureTreasury = TextEditingController();
    bondsTreasuryBills = TextEditingController();
    solarInstallationCost = TextEditingController();
    donationToApprovedCharity = TextEditingController();
    donationToGovernment = TextEditingController();
    installmentPayment = TextEditingController();
    professionalServices = TextEditingController();
    royalty = TextEditingController();
    aitWht = TextEditingController();
    name = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white, // Background color
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(
                        0.1), // Shadow color with some transparency
                    spreadRadius: 0, // Spread radius
                    blurRadius: 4, // Blur radius
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
                // If you also want to round the corners of the container
              ),
              height:
                  100, // Set the container height to match the AppBar height
              child: Row(
                crossAxisAlignment:
                    CrossAxisAlignment.center, // Center the Row vertically
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // Space items horizontally
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Image.asset('images/logo.png', height: 50),
                  ), // Adjust the size of the logo if necessary
                  CustomNavigationBar(
                    selectedIndex: _selectedIndex,
                    onItemSelected: _navigateTo,
                  ),
                ],
              ),
            ),

            Container(
              color: Colors.blueAccent.shade100,
              width: double.infinity,
              height: 600,
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Visibility(
                          visible: _visibleContainerIndex == 1,
                          child: Container(
                            color: Colors.white,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 150),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(
                                                0.5), // Shadow color with opacity
                                            spreadRadius: 5, // Spread radius
                                            blurRadius: 7, // Blur radius
                                            offset: Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            color: AppColor.appTeal,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20.0,
                                                      vertical: 5.0),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Estimate Individual Tax Payable 2023/2024',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 20),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'The tax year is starts on 01st ',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12),
                                                      ),
                                                      Text(
                                                        'April and ends at 31st March',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 12),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 45.0,
                                                        vertical: 15),
                                                child: Text(
                                                  'Gains & Profits',
                                                  style: TextStyle(
                                                      fontSize: 22,
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            width: double.infinity,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 30),
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    width: 1,
                                                    color: Colors.grey)),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Expanded(
                                                  flex: 4,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      TextContainer(
                                                          childText:
                                                              'Gross Salary',
                                                          fontSize: 15,
                                                          textColor:
                                                              Colors.black),
                                                      TextContainer(
                                                          childText:
                                                              'Profits from Business',
                                                          fontSize: 15,
                                                          textColor:
                                                              Colors.black),
                                                      TextContainer(
                                                          childText:
                                                              'Interest Income',
                                                          fontSize: 15,
                                                          textColor:
                                                              Colors.black),
                                                      TextContainer(
                                                          childText:
                                                              'Dividend Income',
                                                          fontSize: 15,
                                                          textColor:
                                                              Colors.black),
                                                      TextContainer(
                                                          childText:
                                                              'Rent Income',
                                                          fontSize: 15,
                                                          textColor:
                                                              Colors.black),
                                                      TextContainer(
                                                          childText:
                                                              'Professional Services/Service Fees',
                                                          fontSize: 15,
                                                          textColor:
                                                              Colors.black),
                                                      TextContainer(
                                                          childText: 'Royalty',
                                                          fontSize: 15,
                                                          textColor:
                                                              Colors.black),
                                                      TextContainer(
                                                          childText:
                                                              'Other Income',
                                                          fontSize: 15,
                                                          textColor:
                                                              Colors.black),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 3,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      TexfeildContainer(
                                                        controller: grossSalary,
                                                        hintText: 'amount',
                                                      ),
                                                      TexfeildContainer(
                                                        controller:
                                                            profitsFromBusiness,
                                                        hintText: 'amount',
                                                      ),
                                                      TexfeildContainer(
                                                        controller:
                                                            interestIncome,
                                                        hintText: 'amount',
                                                      ),
                                                      TexfeildContainer(
                                                        controller:
                                                            dividendIncome,
                                                        hintText: 'amount',
                                                      ),
                                                      TexfeildContainer(
                                                        controller: rentIncome,
                                                        hintText: 'amount',
                                                      ),
                                                      TexfeildContainer(
                                                        controller:
                                                            professionalServices,
                                                        hintText: 'amount',
                                                      ),
                                                      TexfeildContainer(
                                                        controller: royalty,
                                                        hintText: 'amount',
                                                      ),
                                                      TexfeildContainer(
                                                        controller: otherIncome,
                                                        hintText: 'amount',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 2,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      RedioContainer(
                                                        groupValue:
                                                            grossSalaryId,
                                                        onChanged: (val) {
                                                          setState(() {
                                                            grossSalaryRadioButtonItem =
                                                                12;
                                                            grossSalaryId = 1;
                                                          });
                                                        },
                                                        value: 1,
                                                        timeText: 'Monthly',
                                                      ),
                                                      RedioContainer(
                                                        groupValue:
                                                            profitsFromBusinessId,
                                                        onChanged: (val) {
                                                          setState(() {
                                                            profitsFromBusinessRadioButtonItem =
                                                                12;
                                                            profitsFromBusinessId =
                                                                4;
                                                          });
                                                        },
                                                        value: 4,
                                                        timeText: 'Monthly',
                                                      ),
                                                      RedioContainer(
                                                          groupValue:
                                                              interestIncomeId,
                                                          onChanged: (val) {
                                                            setState(() {
                                                              interestIncomeRadioButtonItem =
                                                                  12;
                                                              interestIncomeId =
                                                                  7;
                                                            });
                                                          },
                                                          timeText: 'Monthly',
                                                          value: 7),
                                                      RedioContainer(
                                                          groupValue:
                                                              dividendIncomeId,
                                                          onChanged: (val) {
                                                            setState(() {
                                                              dividendIncomeRadioButtonItem =
                                                                  12;
                                                              dividendIncomeId =
                                                                  10;
                                                            });
                                                          },
                                                          timeText: 'Monthly',
                                                          value: 10),
                                                      RedioContainer(
                                                          groupValue:
                                                              rentIncomeId,
                                                          onChanged: (val) {
                                                            setState(() {
                                                              rentIncomeRadioButtonItem =
                                                                  12;
                                                              rentIncomeId = 13;
                                                            });
                                                          },
                                                          timeText: 'Monthly',
                                                          value: 13),
                                                      RedioContainer(
                                                          groupValue:
                                                              professionalServiceId,
                                                          onChanged: (val) {
                                                            setState(() {
                                                              professionalServiceRadioButtonItem =
                                                                  12;
                                                              professionalServiceId =
                                                                  16;
                                                            });
                                                          },
                                                          timeText: 'Monthly',
                                                          value: 16),
                                                      RedioContainer(
                                                          groupValue: royaltyId,
                                                          onChanged: (val) {
                                                            setState(() {
                                                              royaltyRadioButtonItem =
                                                                  12;
                                                              royaltyId = 19;
                                                            });
                                                          },
                                                          timeText: 'Monthly',
                                                          value: 19),
                                                      RedioContainer(
                                                          groupValue:
                                                              otherIncomeId,
                                                          onChanged: (val) {
                                                            setState(() {
                                                              otherIncomeRadioButtonItem =
                                                                  12;
                                                              otherIncomeId =
                                                                  22;
                                                            });
                                                          },
                                                          timeText: 'Monthly',
                                                          value: 22),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 2,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      RedioContainer(
                                                        groupValue:
                                                            grossSalaryId,
                                                        onChanged:
                                                            (int? newValue) {
                                                          if (newValue !=
                                                              null) {
                                                            setState(() {
                                                              grossSalaryRadioButtonItem =
                                                                  4;
                                                              grossSalaryId = 2;
                                                            });
                                                          }
                                                        },
                                                        value: 2,
                                                        timeText: 'Quarterly',
                                                      ),
                                                      RedioContainer(
                                                        groupValue:
                                                            profitsFromBusinessId,
                                                        onChanged:
                                                            (int? newValue) {
                                                          if (newValue !=
                                                              null) {
                                                            setState(() {
                                                              profitsFromBusinessRadioButtonItem =
                                                                  4;
                                                              profitsFromBusinessId =
                                                                  5;
                                                            });
                                                          }
                                                        },
                                                        timeText: 'Quarterly',
                                                        value: 5,
                                                      ),
                                                      RedioContainer(
                                                        groupValue:
                                                            interestIncomeId,
                                                        onChanged:
                                                            (int? newValue) {
                                                          if (newValue !=
                                                              null) {
                                                            setState(() {
                                                              interestIncomeRadioButtonItem =
                                                                  12;
                                                              interestIncomeId =
                                                                  8;
                                                            });
                                                          }
                                                        },
                                                        timeText: 'Quarterly',
                                                        value: 8,
                                                      ),
                                                      RedioContainer(
                                                        groupValue:
                                                            dividendIncomeId,
                                                        onChanged:
                                                            (int? newValue) {
                                                          if (newValue !=
                                                              null) {
                                                            setState(() {
                                                              dividendIncomeRadioButtonItem =
                                                                  12;
                                                              dividendIncomeId =
                                                                  11;
                                                            });
                                                          }
                                                        },
                                                        timeText: 'Quarterly',
                                                        value: 11,
                                                      ),
                                                      RedioContainer(
                                                        groupValue:
                                                            rentIncomeId,
                                                        onChanged:
                                                            (int? newValue) {
                                                          if (newValue !=
                                                              null) {
                                                            setState(() {
                                                              rentIncomeRadioButtonItem =
                                                                  12;
                                                              rentIncomeId = 14;
                                                            });
                                                          }
                                                        },
                                                        timeText: 'Quarterly',
                                                        value: 14,
                                                      ),
                                                      RedioContainer(
                                                        groupValue:
                                                            professionalServiceId,
                                                        onChanged:
                                                            (int? newValue) {
                                                          if (newValue !=
                                                              null) {
                                                            setState(() {
                                                              professionalServiceRadioButtonItem =
                                                                  12;
                                                              professionalServiceId =
                                                                  17;
                                                            });
                                                          }
                                                        },
                                                        timeText: 'Quarterly',
                                                        value: 17,
                                                      ),
                                                      RedioContainer(
                                                        groupValue: royaltyId,
                                                        onChanged:
                                                            (int? newValue) {
                                                          if (newValue !=
                                                              null) {
                                                            setState(() {
                                                              royaltyRadioButtonItem =
                                                                  12;
                                                              royaltyId = 20;
                                                            });
                                                          }
                                                        },
                                                        timeText: 'Quarterly',
                                                        value: 20,
                                                      ),
                                                      RedioContainer(
                                                        groupValue:
                                                            otherIncomeId,
                                                        onChanged:
                                                            (int? newValue) {
                                                          if (newValue !=
                                                              null) {
                                                            setState(() {
                                                              otherIncomeRadioButtonItem =
                                                                  12;
                                                              otherIncomeId =
                                                                  23;
                                                            });
                                                          }
                                                        },
                                                        timeText: 'Quarterly',
                                                        value: 23,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 2,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      RedioContainer(
                                                        groupValue:
                                                            grossSalaryId,
                                                        onChanged:
                                                            (int? newValue) {
                                                          if (newValue !=
                                                              null) {
                                                            setState(() {
                                                              grossSalaryRadioButtonItem =
                                                                  1;
                                                              grossSalaryId = 3;
                                                            });
                                                          }
                                                        },
                                                        value: 3,
                                                        timeText: 'Annually',
                                                      ),
                                                      RedioContainer(
                                                        groupValue:
                                                            profitsFromBusinessId,
                                                        onChanged:
                                                            (int? newValue) {
                                                          if (newValue !=
                                                              null) {
                                                            setState(() {
                                                              profitsFromBusinessRadioButtonItem =
                                                                  1;
                                                              profitsFromBusinessId =
                                                                  6;
                                                            });
                                                          }
                                                        },
                                                        timeText: 'Annually',
                                                        value: 6,
                                                      ),
                                                      RedioContainer(
                                                        groupValue:
                                                            interestIncomeId,
                                                        onChanged:
                                                            (int? newValue) {
                                                          if (newValue !=
                                                              null) {
                                                            setState(() {
                                                              interestIncomeRadioButtonItem =
                                                                  1;
                                                              interestIncomeId =
                                                                  9;
                                                            });
                                                          }
                                                        },
                                                        timeText: 'Annually',
                                                        value: 9,
                                                      ),
                                                      RedioContainer(
                                                        groupValue:
                                                            dividendIncomeId,
                                                        onChanged:
                                                            (int? newValue) {
                                                          if (newValue !=
                                                              null) {
                                                            setState(() {
                                                              dividendIncomeRadioButtonItem =
                                                                  1;
                                                              dividendIncomeId =
                                                                  12;
                                                            });
                                                          }
                                                        },
                                                        timeText: 'Annually',
                                                        value: 12,
                                                      ),
                                                      RedioContainer(
                                                        groupValue:
                                                            rentIncomeId,
                                                        onChanged:
                                                            (int? newValue) {
                                                          if (newValue !=
                                                              null) {
                                                            setState(() {
                                                              rentIncomeRadioButtonItem =
                                                                  1;
                                                              rentIncomeId = 15;
                                                            });
                                                          }
                                                        },
                                                        timeText: 'Annually',
                                                        value: 15,
                                                      ),
                                                      RedioContainer(
                                                        groupValue:
                                                            professionalServiceId,
                                                        onChanged:
                                                            (int? newValue) {
                                                          if (newValue !=
                                                              null) {
                                                            setState(() {
                                                              professionalServiceRadioButtonItem =
                                                                  1;
                                                              professionalServiceId =
                                                                  18;
                                                            });
                                                          }
                                                        },
                                                        timeText: 'Annually',
                                                        value: 18,
                                                      ),
                                                      RedioContainer(
                                                        groupValue: royaltyId,
                                                        onChanged:
                                                            (int? newValue) {
                                                          if (newValue !=
                                                              null) {
                                                            setState(() {
                                                              royaltyRadioButtonItem =
                                                                  1;
                                                              royaltyId = 21;
                                                            });
                                                          }
                                                        },
                                                        timeText: 'Annually',
                                                        value: 21,
                                                      ),
                                                      RedioContainer(
                                                        groupValue:
                                                            otherIncomeId,
                                                        onChanged:
                                                            (int? newValue) {
                                                          if (newValue !=
                                                              null) {
                                                            setState(() {
                                                              otherIncomeRadioButtonItem =
                                                                  1;
                                                              otherIncomeId =
                                                                  24;
                                                            });
                                                          }
                                                        },
                                                        timeText: 'Annually',
                                                        value: 24,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 25,
                                          ),
                                        ],
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 150.0, vertical: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15.0),
                                          child: ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                _visibleContainerIndex = 2;
                                              });
                                            },
                                            child: Text(
                                              'Next',
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 32, vertical: 8),
                                              // fixedSize: const Size(
                                              //     220, 45), // Set the width and height
                                              primary: AppColor
                                                  .appTeal, // Set the background color to green
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(
                                                    30), // Set the border radius
                                              ),
                                            ),
                                          ),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            // Handle button tap
                                          },
                                          child: Text(
                                            'Clear',
                                            style: TextStyle(fontSize: 14),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 32, vertical: 8),
                                            // fixedSize: const Size(
                                            //     220, 45), // Set the width and height
                                            primary: Colors
                                                .redAccent, // Set the background color to green
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(
                                                  30), // Set the border radius
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Visibility(
                          visible: _visibleContainerIndex == 2,
                          child: Container(
                            color: Colors.white,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 150),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(
                                                0.5), // Shadow color with opacity
                                            spreadRadius: 5, // Spread radius
                                            blurRadius: 7, // Blur radius
                                            offset: Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 45.0,
                                                        vertical: 15),
                                                child: Text(
                                                  'Qualifying Payments',
                                                  style: TextStyle(
                                                      fontSize: 22,
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            width: double.infinity,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 30),
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    width: 1,
                                                    color: Colors.grey)),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Expanded(
                                                  flex: 4,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      TextContainer(
                                                          childText:
                                                              'Donation to approved charity',
                                                          fontSize: 15,
                                                          textColor:
                                                              Colors.black),
                                                      TextContainer(
                                                          childText:
                                                              'Donation to Government',
                                                          fontSize: 15,
                                                          textColor:
                                                              Colors.black),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 3,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      TexfeildContainer(
                                                        controller:
                                                            donationToApprovedCharity,
                                                        hintText: 'amount',
                                                      ),
                                                      TexfeildContainer(
                                                        controller:
                                                            donationToGovernment,
                                                        hintText: 'amount',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 2,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      RedioContainer(
                                                        groupValue:
                                                            donationToApprovedCharityId,
                                                        onChanged: (val) {
                                                          setState(() {
                                                            donationToApprovedCharityRadioButtonItem =
                                                                12;
                                                            donationToApprovedCharityId =
                                                                25;
                                                          });
                                                        },
                                                        value: 25,
                                                        timeText: 'Monthly',
                                                      ),
                                                      RedioContainer(
                                                        groupValue:
                                                            donationToGovernmentId,
                                                        onChanged: (val) {
                                                          setState(() {
                                                            donationToApprovedCharityRadioButtonItem =
                                                                12;
                                                            donationToGovernmentId =
                                                                28;
                                                          });
                                                        },
                                                        value: 28,
                                                        timeText: 'Monthly',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 2,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      RedioContainer(
                                                        groupValue:
                                                            donationToApprovedCharityId,
                                                        onChanged: (val) {
                                                          setState(() {
                                                            donationToApprovedCharityRadioButtonItem =
                                                                12;
                                                            donationToApprovedCharityId =
                                                                26;
                                                          });
                                                        },
                                                        value: 26,
                                                        timeText: 'Quarterly',
                                                      ),
                                                      RedioContainer(
                                                        groupValue:
                                                            donationToGovernmentId,
                                                        onChanged: (val) {
                                                          setState(() {
                                                            donationToGovernmentRadioButtonItem =
                                                                12;
                                                            donationToGovernmentId =
                                                                29;
                                                          });
                                                        },
                                                        value: 29,
                                                        timeText: 'Quarterly',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 2,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      RedioContainer(
                                                        groupValue:
                                                            donationToApprovedCharityId,
                                                        onChanged: (val) {
                                                          setState(() {
                                                            donationToApprovedCharityRadioButtonItem =
                                                                1;
                                                            donationToApprovedCharityId =
                                                                27;
                                                          });
                                                        },
                                                        value: 27,
                                                        timeText: 'Annually',
                                                      ),
                                                      RedioContainer(
                                                        groupValue:
                                                            donationToGovernmentId,
                                                        onChanged: (val) {
                                                          setState(() {
                                                            donationToGovernmentRadioButtonItem =
                                                                1;
                                                            donationToGovernmentId =
                                                                30;
                                                          });
                                                        },
                                                        value: 30,
                                                        timeText: 'Annually',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 25,
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 45.0,
                                                        vertical: 15),
                                                child: Text(
                                                  'Tax Credits',
                                                  style: TextStyle(
                                                      fontSize: 22,
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            width: double.infinity,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 30),
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    width: 1,
                                                    color: Colors.grey)),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Expanded(
                                                  flex: 4,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      TextContainer(
                                                          childText:
                                                              'Installment Payment',
                                                          fontSize: 15,
                                                          textColor:
                                                              Colors.black),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 3,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      TexfeildContainer(
                                                        controller:
                                                            installmentPayment,
                                                        hintText: 'amount',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 2,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        color: Colors.white,
                                                        width: 100,
                                                        height: 40,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 2,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      RedioContainer(
                                                        groupValue:
                                                            installmentPaymentId,
                                                        onChanged: (val) {
                                                          setState(() {
                                                            installmentPaymentRadioButtonItem =
                                                                12;
                                                            installmentPaymentId =
                                                                32;
                                                          });
                                                        },
                                                        value: 32,
                                                        timeText: 'Quarterly',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 2,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      RedioContainer(
                                                        groupValue:
                                                            installmentPaymentId,
                                                        onChanged: (val) {
                                                          setState(() {
                                                            installmentPaymentRadioButtonItem =
                                                                1;
                                                            installmentPaymentId =
                                                                33;
                                                          });
                                                        },
                                                        value: 33,
                                                        timeText: 'Annually',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 25,
                                          ),
                                        ],
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 150.0, vertical: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              _visibleContainerIndex = 1;
                                            });
                                          },
                                          child: Text(
                                            'Back',
                                            style: TextStyle(fontSize: 14),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 32, vertical: 8),
                                            // fixedSize: const Size(
                                            //     220, 45), // Set the width and height
                                            primary: AppColor
                                                .appTeal, // Set the background color to green
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(
                                                  30), // Set the border radius
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15.0),
                                          child: ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                _visibleContainerIndex = 3;
                                              });
                                            },
                                            child: Text(
                                              'Calculate',
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 32, vertical: 8),
                                              // fixedSize: const Size(
                                              //     220, 45), // Set the width and height
                                              primary: AppColor
                                                  .appTeal, // Set the background color to green
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(
                                                    30), // Set the border radius
                                              ),
                                            ),
                                          ),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            // Handle button tap
                                          },
                                          child: Text(
                                            'Clear',
                                            style: TextStyle(fontSize: 14),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 32, vertical: 8),
                                            // fixedSize: const Size(
                                            //     220, 45), // Set the width and height
                                            primary: Colors
                                                .redAccent, // Set the background color to green
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(
                                                  30), // Set the border radius
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Visibility(
                          visible: _visibleContainerIndex == 3,
                          child: Container(
                            color: Colors.yellow,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 150),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(
                                                0.5), // Shadow color with opacity
                                            spreadRadius: 5, // Spread radius
                                            blurRadius: 7, // Blur radius
                                            offset: Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 45.0,
                                                        vertical: 15),
                                                child: Text(
                                                  'Qualifying Payments',
                                                  style: TextStyle(
                                                      fontSize: 22,
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            width: double.infinity,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 30),
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    width: 1,
                                                    color: Colors.grey)),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Expanded(
                                                  flex: 4,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      TextContainer(
                                                          childText:
                                                              'Donation to approved charity',
                                                          fontSize: 15,
                                                          textColor:
                                                              Colors.black),
                                                      TextContainer(
                                                          childText:
                                                              'Donation to Government',
                                                          fontSize: 15,
                                                          textColor:
                                                              Colors.black),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 3,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      TexfeildContainer(
                                                        controller:
                                                            donationToApprovedCharity,
                                                        hintText: 'amount',
                                                      ),
                                                      TexfeildContainer(
                                                        controller:
                                                            donationToGovernment,
                                                        hintText: 'amount',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 2,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      RedioContainer(
                                                        groupValue:
                                                            donationToApprovedCharityId,
                                                        onChanged: (val) {
                                                          setState(() {
                                                            donationToApprovedCharityRadioButtonItem =
                                                                12;
                                                            donationToApprovedCharityId =
                                                                25;
                                                          });
                                                        },
                                                        value: 25,
                                                        timeText: 'Monthly',
                                                      ),
                                                      RedioContainer(
                                                        groupValue:
                                                            donationToGovernmentId,
                                                        onChanged: (val) {
                                                          setState(() {
                                                            donationToApprovedCharityRadioButtonItem =
                                                                12;
                                                            donationToGovernmentId =
                                                                28;
                                                          });
                                                        },
                                                        value: 28,
                                                        timeText: 'Monthly',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 2,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      RedioContainer(
                                                        groupValue:
                                                            donationToApprovedCharityId,
                                                        onChanged: (val) {
                                                          setState(() {
                                                            donationToApprovedCharityRadioButtonItem =
                                                                12;
                                                            donationToApprovedCharityId =
                                                                26;
                                                          });
                                                        },
                                                        value: 26,
                                                        timeText: 'Quarterly',
                                                      ),
                                                      RedioContainer(
                                                        groupValue:
                                                            donationToGovernmentId,
                                                        onChanged: (val) {
                                                          setState(() {
                                                            donationToGovernmentRadioButtonItem =
                                                                12;
                                                            donationToGovernmentId =
                                                                29;
                                                          });
                                                        },
                                                        value: 29,
                                                        timeText: 'Quarterly',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 2,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      RedioContainer(
                                                        groupValue:
                                                            donationToApprovedCharityId,
                                                        onChanged: (val) {
                                                          setState(() {
                                                            donationToApprovedCharityRadioButtonItem =
                                                                1;
                                                            donationToApprovedCharityId =
                                                                27;
                                                          });
                                                        },
                                                        value: 27,
                                                        timeText: 'Annually',
                                                      ),
                                                      RedioContainer(
                                                        groupValue:
                                                            donationToGovernmentId,
                                                        onChanged: (val) {
                                                          setState(() {
                                                            donationToGovernmentRadioButtonItem =
                                                                1;
                                                            donationToGovernmentId =
                                                                30;
                                                          });
                                                        },
                                                        value: 30,
                                                        timeText: 'Annually',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 25,
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 45.0,
                                                        vertical: 15),
                                                child: Text(
                                                  'Tax Credits',
                                                  style: TextStyle(
                                                      fontSize: 22,
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            width: double.infinity,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 30),
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    width: 1,
                                                    color: Colors.grey)),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Expanded(
                                                  flex: 4,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      TextContainer(
                                                          childText:
                                                              'Installment Payment',
                                                          fontSize: 15,
                                                          textColor:
                                                              Colors.black),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 3,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      TexfeildContainer(
                                                        controller:
                                                            installmentPayment,
                                                        hintText: 'amount',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 2,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        color: Colors.white,
                                                        width: 100,
                                                        height: 40,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 2,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      RedioContainer(
                                                        groupValue:
                                                            installmentPaymentId,
                                                        onChanged: (val) {
                                                          setState(() {
                                                            installmentPaymentRadioButtonItem =
                                                                12;
                                                            installmentPaymentId =
                                                                32;
                                                          });
                                                        },
                                                        value: 32,
                                                        timeText: 'Quarterly',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 2,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      RedioContainer(
                                                        groupValue:
                                                            installmentPaymentId,
                                                        onChanged: (val) {
                                                          setState(() {
                                                            installmentPaymentRadioButtonItem =
                                                                1;
                                                            installmentPaymentId =
                                                                33;
                                                          });
                                                        },
                                                        value: 33,
                                                        timeText: 'Annually',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 25,
                                          ),
                                        ],
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 150.0, vertical: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              _visibleContainerIndex = 1;
                                            });
                                          },
                                          child: Text(
                                            'Back',
                                            style: TextStyle(fontSize: 14),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 32, vertical: 8),
                                            // fixedSize: const Size(
                                            //     220, 45), // Set the width and height
                                            primary: AppColor
                                                .appTeal, // Set the background color to green
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(
                                                  30), // Set the border radius
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15.0),
                                          child: ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                _visibleContainerIndex = 3;
                                              });
                                            },
                                            child: Text(
                                              'Calculate',
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 32, vertical: 8),
                                              // fixedSize: const Size(
                                              //     220, 45), // Set the width and height
                                              primary: AppColor
                                                  .appTeal, // Set the background color to green
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(
                                                    30), // Set the border radius
                                              ),
                                            ),
                                          ),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            // Handle button tap
                                          },
                                          child: Text(
                                            'Clear',
                                            style: TextStyle(fontSize: 14),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 32, vertical: 8),
                                            // fixedSize: const Size(
                                            //     220, 45), // Set the width and height
                                            primary: Colors
                                                .redAccent, // Set the background color to green
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(
                                                  30), // Set the border radius
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Visibility(
                          visible: _visibleContainerIndex == 4,
                          child: Container(
                              color: Colors.purple,
                              child: Center(child: Text('Container 4'))),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Other widgets...
            Footer(),
          ],
        ),
      ),
    );
  }
}
