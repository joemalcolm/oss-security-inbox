X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1048" "Thursday" "20" "September" "2018" "12:52:28" "+0100" "scrumpyjack@st.ilet.to" "scrumpyjack@st.ilet.to" "<20180920115228.GB31416@stiletto.tun>" "40" "[oss-security] CVE-2018-5740 BIND (named vuln) and bad OVAL dict file maintenance" nil nil nil "9" "2018092011:52:28" "[oss-security] CVE-2018-5740 BIND (named vuln) and bad OVAL dict file maintenance" (number mark "U       scrumpyjack@ Sep 20   40/1048  " thread-indent "\"[oss-security] CVE-2018-5740 BIND (named vuln) and bad OVAL dict file maintenance\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5789 invoked by uid 550); 20 Sep 2018 11:57:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28492 invoked from network); 20 Sep 2018 11:52:40 -0000
Date: Thu, 20 Sep 2018 12:52:28 +0100
From: scrumpyjack@st.ilet.to
To: oss-security@lists.openwall.com
Message-ID: <20180920115228.GB31416@stiletto.tun>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
User-Agent: Mutt/1.9.1 (2017-09-22)
Subject: [oss-security] CVE-2018-5740 BIND (named vuln) and bad OVAL dict file maintenance

hi there, and apologies if this isn't the correct place to turn to, but 
the OVAL boards have been inactive since 2015 and perhaps the people who 
maintain these files lurk here and will notice.

In short:

CVE-2018-5740 Applies to named, when running, with a specific option set 
[1]

The OVAL [2] dictionaries (which are consumed by vulnerability scanners) 
for RedHat (and derivatives) [3],[4] lists the following packages as 
affected

bind
bind-chroot
bind-devel
bind-libs
bind-libs-lite
bind-license
bind-lite-devel
bind-pkcs11
bind-pkcs11-devel
bind-pkcs11-libs
bind-pkcs11-utils
bind-sdb
bind-sdb-chroot
bind-utils

named is only contained in the bind package, and this list is causing no 
end of problems on hosts that, for example, only want bind-utils and 
dependencies (of which bind -containing named- is not).

Could whoever maintains these take a look?

thank you for you time

[1] https://kb.isc.org/docs/aa-01639
[2] https://oval.mitre.org
[3] https://www.redhat.com/security/data/oval/
[4] https://linux.oracle.com/security/oval/
