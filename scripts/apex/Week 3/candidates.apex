Candidates.CompanyName = 'softinnovas';
Candidates.printCandidateInfo();
system.debug('START count of candidates = ' + Candidates.countCandidates);

Candidates c1 = new Candidates();
//Candidates.countCandidates++;
c1.Name = 'Jerry';
c1.Gender = 'Male';
c1.printCandidate();

Candidates c5 = new Candidates('Newman', 'Male');
c5.printCandidate();

Candidates c2 = new Candidates();
//Candidates.countCandidates++;
c2.Name = 'Hale';
c2.Gender = 'Female';
c2.printCandidate();

Candidates.CompanyName = 'Vandelay Industries';

Candidates c3 = new Candidates();
//Candidates.countCandidates++;
c3.Name = 'Timothy';
c3.Gender = 'Male';
c3.printCandidate();

system.debug('------');
c1.printCandidate();
system.debug('-----');
c2.printCandidate();
system.debug('-----');
Candidates.printCandidateInfo();

Candidates c4 = new Candidates();
c4.Name = 'George';
c4.Gender = 'Male';
c4.printCandidate();

system.debug('END count of candidates = ' + Candidates.countCandidates);
