// lib/models/dosen_model.dart

class Dosen {
  final String nama;
  final String nip;
  final String bidangKeahlian;

  Dosen({required this.nama, required this.nip, required this.bidangKeahlian});
}

// Data Dummy
final List<Dosen> daftarDosen = [
  Dosen(
    nama: 'AHMA NASUKHA, S.Hum., M.S.I',
    nip: '198807222022031001',
    bidangKeahlian: 'Pemrograman Mobile',
  ),
  Dosen(
    nama: 'DILA NURLAILA, M.Kom.',
    nip: '1571015201960020',
    bidangKeahlian: 'Rekayasa Perangkat Lunak',
  ),
  Dosen(
    nama: 'Wahyu Anggoro, M.Kom',
    nip: '1571082309960021',
    bidangKeahlian: 'Manajemen Resiko',
  ),
  Dosen(
    nama: 'POL METRA, M.Kom',
    nip: '19910615010122045',
    bidangKeahlian: 'Multimedia',
  ),
  Dosen(
    nama: 'Fatima Felawati, S.Kom.,M.Kom',
    nip: '199305112025052004',
    bidangKeahlian: 'Testing dan Implementasi',
  ),
  Dosen(
    nama: 'M. YUSUF,S.Kom., M.S.I',
    nip: '198802142023211026',
    bidangKeahlian: 'Technopreneurship',
  ),
];
