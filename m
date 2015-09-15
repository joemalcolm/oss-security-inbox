X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["596" "Tuesday" "15" "September" "2015" "12:57:05" "+0200" "Martin Prpic" "mprpic@redhat.com" "<87mvwoj6gu.fsf@redhat.com>" "19" "[oss-security] CVE-2015-6584: XSS in DataTables" nil nil nil "9" "2015091510:57:05" "[oss-security] CVE-2015-6584: XSS in DataTables" (number mark "        mprpic@redha Sep 15   19/596   " thread-indent "\"[oss-security] CVE-2015-6584: XSS in DataTables\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32212 invoked by uid 550); 15 Sep 2015 10:57:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32173 invoked from network); 15 Sep 2015 10:57:20 -0000
User-agent: mu4e 0.9.9.5; emacs 24.3.1
Message-ID: <87mvwoj6gu.fsf@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Date: Tue, 15 Sep 2015 12:57:05 +0200
From: Martin Prpic <mprpic@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-6584: XSS in DataTables
To: "oss security list" <oss-security@lists.openwall.com>

Hi,

CVE-2015-6584 was assigned to a cross-site scripting flaw in DataTables:

https://www.netsparker.com/cve-2015-6384-xss-vulnerability-identified-in-datatables/
https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-6584

Any pointers on which commit fixes this issue? The advisory linked above
only mentions it was fixed in 1.10.9, but the changelog for that version
does not mention the CVE, or any change that looks like XSS for that
matter.

https://cdn.datatables.net/1.10.9/
https://github.com/DataTables/DataTables/commits/master

Thanks!

-- 
Martin Prpič / Red Hat Product Security
