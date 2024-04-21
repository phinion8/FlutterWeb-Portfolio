class ProjectItem{

  final String title;
  final String description;
  final String image;
  final String? livePreviewLink;
  final String? downloadLink;
  final String? githubLink;
  final String? playStoreLink;
  final String hashTags;

  ProjectItem(this.title, this.description, this.image, this.livePreviewLink,
      this.downloadLink, this.githubLink, this.playStoreLink, this.hashTags);
}