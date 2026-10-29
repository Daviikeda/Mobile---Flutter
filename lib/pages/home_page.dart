import 'package:flutter/material.dart';

const Color arsenalRed = Color(0xFFEF0107);
const Color arsenalNavy = Color(0xFF063672);
const Color arsenalGold = Color(0xFF9C824A);

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: arsenalRed,
        foregroundColor: Colors.white,
        centerTitle: true,
        leading: const Icon(Icons.menu),
        title: const Text(
          'GUNNERS',
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.notifications_none),
          ),
        ],
      ),
      body: ListView(
        children: const [
          _HeaderBanner(),
          _SectionTitle('Próxima Partida'),
          _NextMatchCard(),
          _SectionTitle('Acesso Rápido'),
          _QuickAccessRow(),
          _SectionTitle('Últimas Notícias'),
          _NewsTile(
            title: 'Arsenal vence clássico de Londres',
            subtitle: 'Gunners dominam a partida e somam mais três pontos.',
            time: 'Há 2 horas',
          ),
          _NewsTile(
            title: 'Treino aberto no Emirates Stadium',
            subtitle: 'Torcedores poderão acompanhar a preparação da equipe.',
            time: 'Há 5 horas',
          ),
          _NewsTile(
            title: 'Novo uniforme é apresentado',
            subtitle: 'Camisa da temporada traz o clássico vermelho e branco.',
            time: 'Ontem',
          ),
          SizedBox(height: 16),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: arsenalRed,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_soccer),
            label: 'Jogos',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.groups), label: 'Elenco'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
    );
  }
}

class _HeaderBanner extends StatelessWidget {
  const _HeaderBanner();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      decoration: const BoxDecoration(
        color: arsenalRed,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Bem-vindo, Gunner!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Tudo sobre o Arsenal em um só lugar.',
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
          SizedBox(height: 16),
          Text(
            'VICTORIA CONCORDIA CRESCIT',
            style: TextStyle(
              color: arsenalGold,
              fontSize: 12,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: arsenalNavy,
        ),
      ),
    );
  }
}

class _NextMatchCard extends StatelessWidget {
  const _NextMatchCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              'Premier League • Rodada 10',
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _TeamColumn(name: 'Arsenal', color: arsenalRed),
                Column(
                  children: [
                    Text(
                      'VS',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: arsenalNavy,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text('Sáb, 16:00', style: TextStyle(fontSize: 13)),
                  ],
                ),
                _TeamColumn(name: 'Adversário', color: arsenalNavy),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on, size: 16, color: Colors.grey),
                SizedBox(width: 4),
                Text(
                  'Emirates Stadium, Londres',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _TeamColumn extends StatelessWidget {
  const _TeamColumn({required this.name, required this.color});

  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: color,
          child: Text(
            name[0],
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(name, style: const TextStyle(fontWeight: FontWeight.w600)),
      ],
    );
  }
}

class _QuickAccessRow extends StatelessWidget {
  const _QuickAccessRow();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          _QuickAccessItem(icon: Icons.calendar_month, label: 'Calendário'),
          SizedBox(width: 12),
          _QuickAccessItem(icon: Icons.leaderboard, label: 'Tabela'),
          SizedBox(width: 12),
          _QuickAccessItem(icon: Icons.shopping_bag, label: 'Loja'),
        ],
      ),
    );
  }
}

class _QuickAccessItem extends StatelessWidget {
  const _QuickAccessItem({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.black12),
        ),
        child: Column(
          children: [
            Icon(icon, color: arsenalRed, size: 28),
            const SizedBox(height: 8),
            Text(label, style: const TextStyle(fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}

class _NewsTile extends StatelessWidget {
  const _NewsTile({
    required this.title,
    required this.subtitle,
    required this.time,
  });

  final String title;
  final String subtitle;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: arsenalRed.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(Icons.article, color: arsenalRed),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text(subtitle),
        trailing: Text(
          time,
          style: const TextStyle(fontSize: 11, color: Colors.grey),
        ),
        isThreeLine: true,
      ),
    );
  }
}
