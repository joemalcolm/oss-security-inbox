X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["933" "Saturday" "19" "September" "2015" "18:01:39" "+0200" "Stefan Cornelius" "scorneli@redhat.com" "<20150919180139.7b7c4ece@redhat.com>" "27" "Re: [oss-security] CVE Request: Use-after-free in optipng 0.6.4" nil nil nil "9" "2015091916:01:39" "[oss-security] CVE Request: Use-after-free in optipng 0.6.4" (number mark "U       scorneli@red Sep 19   27/933   " thread-indent "\"Re: [oss-security] CVE Request: Use-after-free in optipng 0.6.4\"\n") "<CACn5sdQQeaNj1dwaDP7mgZq0EOx4esNoJwJ7VCicVFjdueWp7w@mail.gmail.com>" ("<CACn5sdQQeaNj1dwaDP7mgZq0EOx4esNoJwJ7VCicVFjdueWp7w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15957 invoked by uid 550); 19 Sep 2015 16:01:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15939 invoked from network); 19 Sep 2015 16:01:57 -0000
Date: Sat, 19 Sep 2015 18:01:39 +0200
From: Stefan Cornelius <scorneli@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <20150919180139.7b7c4ece@redhat.com>
In-Reply-To: <CACn5sdQQeaNj1dwaDP7mgZq0EOx4esNoJwJ7VCicVFjdueWp7w@mail.gmail.com>
References: <CACn5sdQQeaNj1dwaDP7mgZq0EOx4esNoJwJ7VCicVFjdueWp7w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Subject: Re: [oss-security] CVE Request: Use-after-free in optipng 0.6.4

On Wed, 16 Sep 2015 08:11:03 -0300
Gustavo Grieco <gustavo.grieco@gmail.com> wrote:

> We found a use-after-free causing an invalid/double free in optipng
> 0.6.4. Upstream is working in fixing it but keep in mind that optipng
> 0.6.x is officially unsupported. A CVE will be useful since such
> version is included in distros like Debian and Ubuntu. Please find
> attached the test case to trigger it. 

Hi,

For some reason the attached image test case didn't make it through.
Gustavo was kind enough to email me a copy and asked me to add it to
our bug for easy public access.

Direct link:
https://bugzilla.redhat.com/attachment.cgi?id=1075212

Our bug for this issue is here:
https://bugzilla.redhat.com/show_bug.cgi?id=1264015

PS: FYI, "On September 20th, 2015, 0:00 UTC we will be upgrading the Red
Hat Bugzilla servers in a migration process lasting 10 to 14 hours."

Thanks,
-- 
Stefan Cornelius / Red Hat Product Security
