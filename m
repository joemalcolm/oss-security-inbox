X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2294" "Thursday" "23" "April" "2015" "21:10:59" "+0200" "Florian Weimer" "fweimer@redhat.com" "<553943C3.5060704@redhat.com>" "51" "Re: [oss-security] Problems in automatic crash analysis frameworks" nil nil nil "4" "2015042319:10:59" "[oss-security] Problems in automatic crash analysis frameworks" (number mark "        fweimer@redh Apr 23   51/2294  " thread-indent "\"Re: [oss-security] Problems in automatic crash analysis frameworks\"\n") "<55315C2B.6050207@redhat.com>" ("<CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com>" "<55315C2B.6050207@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19764 invoked by uid 550); 23 Apr 2015 19:11:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19746 invoked from network); 23 Apr 2015 19:11:14 -0000
Message-ID: <553943C3.5060704@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com> <55315C2B.6050207@redhat.com>
In-Reply-To: <55315C2B.6050207@redhat.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Date: Thu, 23 Apr 2015 21:10:59 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Problems in automatic crash analysis frameworks
To: oss-security@lists.openwall.com

On 04/17/2015 09:16 PM, Florian Weimer wrote:
> A quick update on the abrt situation.

Another update.  We now have a public tracking bug listing the issues:

  <https://bugzilla.redhat.com/show_bug.cgi?id=1214172>

Previously, all the bugs were public, but it was difficult to find them.

The main fix is to switch problem directory ownership to root:abrt, and
move the directory tree back to /var/spool/abrt, where it was in Red Hat
Enterprise Linux 6.  This should make it impossible to exploit the race
conditions in the libreport event handling scripts:
<https://bugzilla.redhat.com/show_bug.cgi?id=1213408>

The other abrt-hook-ccpp fixes are still needed, though.

The problem report directory handling code in libreport is racy, in part
by design.  This should be fixed by the changed problem directory
ownership, so we did not assign a separate CVE ID for this.
<https://bugzilla.redhat.com/show_bug.cgi?id=1214745>

There appear to be some buffer overflow/stack overflow issues in the
problem directory code in libreport.  With the problem directory
permission changes, this should no longer cross a trust boundary.
<https://bugzilla.redhat.com/show_bug.cgi?id=1214749>

In addition, we have identified several issues in abrt-dbus.

The ChownProblemDir, DeleteElement, and DeleteProblem methods can be
abused to modified unintended parts of the file system because of
missing input validation on the problem directory argument to those
D-Bus method calls.  For ChownProblemDir, this will allow privilege
escalation to root.  CVE-2015-3150:
<https://bugzilla.redhat.com/show_bug.cgi?id=1214451>

The NewProblem, GetInfo and SetElement methods have directory traversal
vulnerabilities which allow local attackers to read and write arbitrary
files on the system.  For NewProblem, it's the analyzer name which is
folded into a path, unchecked; GetInfo and SetElement do not check the
file name in the problem report directory.  CVE-2015-3151:
<https://bugzilla.redhat.com/show_bug.cgi?id=1214451>


I'm still unsure about the libreport event handling scripts.  Some of
them are clearly supposed to run with a user environment because they
reference files such as ~/.vimrc.  I have not figured out yet how this
mechanism is supposed to work.

-- 
Florian Weimer / Red Hat Product Security
