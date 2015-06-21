X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1305" "Sunday" "21" "June" "2015" "09:45:29" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150621134529.CE2D66FC120@smtpvmsrv1.mitre.org>" "37" "[oss-security] Re: CVE Request - CSRF vulnerability in the Google Analyticator Wordpress Plugin v6.4.9.3 before rev @1183563" nil nil nil "6" "2015062113:45:29" "[oss-security] Re: CVE Request - CSRF vulnerability in the Google Analyticator Wordpress Plugin v6.4.9.3 before rev @1183563" (number mark "U       cve-assign@m Jun 21   37/1305  " thread-indent "\"[oss-security] Re: CVE Request - CSRF vulnerability in the Google Analyticator Wordpress Plugin v6.4.9.3 before rev @1183563\"\n") "<CAARZ5vptvkC26BtnjbJhBdnfGBir+gZT+dyXX8T=N1DBD21=Dg@mail.gmail.com>" ("<CAARZ5vptvkC26BtnjbJhBdnfGBir+gZT+dyXX8T=N1DBD21=Dg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26129 invoked by uid 550); 21 Jun 2015 13:45:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26111 invoked from network); 21 Jun 2015 13:45:41 -0000
From: cve-assign@mitre.org
To: venkatesh.nitin@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAARZ5vptvkC26BtnjbJhBdnfGBir+gZT+dyXX8T=N1DBD21=Dg@mail.gmail.com>
Message-Id: <20150621134529.CE2D66FC120@smtpvmsrv1.mitre.org>
Date: Sun, 21 Jun 2015 09:45:29 -0400 (EDT)
Subject: [oss-security] Re: CVE Request - CSRF vulnerability in the Google Analyticator Wordpress Plugin v6.4.9.3 before rev @1183563

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> http://seclists.org/fulldisclosure/2015/Jun/57
> https://wordpress.org/support/topic/discovered-security-vulnerabilities-1

> /wp-admin/options-general.php?page=google-analyticator.php&pageaction=ga_clear_cache
> 
> /wp-admin/options-general.php?page=ga_reset

> https://plugins.trac.wordpress.org/changeset/1183563

Apparently the corresponding change was:

  if (strstr($_SERVER['HTTP_REFERER'], $_SERVER['HTTP_HOST']))

not a token-based solution.

Use CVE-2015-4697 for the issue addressed by changeset/1183563. (It is
possible that other CVE IDs may be needed for this plugin later.)

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVhr+PAAoJEKllVAevmvmsWccIAIhQ9sMks4zSRzjHqza9lXj+
v2fSRT4WJaHpx4QVzpKYuxSbMXjqjDdqZrT0N1ZGjcdOUz9EpNoZJCLdgudgoQVE
mKuPemEaWObEsQHh06D1OXwss/tDLWclFc5OFNdL+PwSrJcXRbeu3OyVmVJi6AKi
Wik7Ir8HuntCavqBNQAKNu+o7QhrbulscBNNNoOMkQ4h5Qwy+zuDhBYEpjQ19DuE
K2hZKRxNwsPnN0w3ws5lab5KLVGnNCRXA/pWZNXsbbj6/XJedux9KvFO+mmg02YP
yr56v97KraIc17rLob9cvRgoT6ucxyJffCpT0LrghhLxkuNKT75SIaSC4Uim0ZE=
=0j3s
-----END PGP SIGNATURE-----
