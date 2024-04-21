class WorkExperienceItem {
  WorkExperienceItem(
      {required this.positionTitle,
      required this.companyName,
      required this.companyImg,
      required this.dateRange,
      required this.pointList});

  final String positionTitle;
  final String companyName;
  final String companyImg;
  final String dateRange;
  final List<String> pointList;
}
