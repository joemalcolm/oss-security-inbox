X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["264" "Monday" "7" "March" "2016" "22:10:33" "+0100" "Florian Weimer" "fweimer@redhat.com" "<56DDEE49.1090904@redhat.com>" "9" "[oss-security] CVE-2016-1234 in glibc glob with GLOB_ALTDIRFUNC" "^Date:" nil nil "3" "2016030721:10:33" "[oss-security] CVE-2016-1234 in glibc glob with GLOB_ALTDIRFUNC" (number mark "        fweimer@redh Mar  7    9/264   " thread-indent "\"[oss-security] CVE-2016-1234 in glibc glob with GLOB_ALTDIRFUNC\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5867 invoked by uid 550); 7 Mar 2016 21:10:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5841 invoked from network); 7 Mar 2016 21:10:47 -0000
Message-ID: <56DDEE49.1090904@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.0
MIME-Version: 1.0
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Date: Mon, 7 Mar 2016 22:10:33 +0100
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2016-1234 in glibc glob with GLOB_ALTDIRFUNC
To: oss-security@lists.openwall.com

Alexander Cherepanov discovered that the glob implementation in glibc
does not correctly handle overlong names in struct dirent buffers when
GLOB_ALTDIRFUNC is used.

Upstream bug report:

  <https://sourceware.org/bugzilla/show_bug.cgi?id=CVE-2016-1234>

Florian
