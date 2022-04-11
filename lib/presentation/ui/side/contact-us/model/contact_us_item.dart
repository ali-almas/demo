enum ContactUsSubtitleType { text, image }

class ContactUsItem {
  final String title;
  final String subtitle;
  final ContactUsSubtitleType type;

  ContactUsItem({
    required this.title,
    required this.subtitle,
    this.type = ContactUsSubtitleType.text,
  });
}
