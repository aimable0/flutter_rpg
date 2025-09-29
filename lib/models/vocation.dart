enum Vocation {
  raider(
    title: 'Terminal Raider',
    description: 'Adept in terminal commands to trigger traps.',
    ability: 'Terminal',
    weapon: 'Shellshock',
    image: 'terminal_raider.jpg',
  ),
  junkie(
    title: 'Code Junkie',
    description: 'User code to infiltrate enemy defenses.',
    ability: 'React 99',
    weapon: 'Higher Order Overdrive',
    image: 'code_junkie.jpg',
  ),
  ninja(
    title: 'UX Ninja',
    description: 'Uses quick & stealthy visual attacks.',
    ability: 'Infused Stylus',
    weapon: 'Triple Swipe',
    image: 'ux_ninja.jpg',
  ),
  wizard(
    title: 'Algo Wizard',
    description: 'Carries a staff to unleash alogrithm magic.',
    ability: 'Crystal staff',
    weapon: 'Algorythmic Daze',
    image: 'algo_wizard.jpg',
  );

  const Vocation({
    required this.title,
    required this.description,
    required this.ability,
    required this.weapon,
    required this.image,
  });

  final String title;
  final String description;
  final String ability;
  final String weapon;
  final String image;
}
