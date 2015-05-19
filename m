X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1104" "Tuesday" "19" "May" "2015" "07:33:19" "-0400" "Marc Deslauriers" "marc.deslauriers@canonical.com" "<555B1F7F.5000902@canonical.com>" "36" "Re: [oss-security] CVE reject request CVE-2015-8146/8147" nil nil nil "5" "2015051911:33:19" "[oss-security] CVE reject request CVE-2015-8146/8147" (number mark "        marc.deslaur May 19   36/1104  " thread-indent "\"Re: [oss-security] CVE reject request CVE-2015-8146/8147\"\n") "<20150519090559.56944c45@redhat.com>" ("<CAEDdjHdR4LYTL_3BUibrYbiBfB2==aJXXLF0RKxcHQgep_SNSw@mail.gmail.com>" "<20150519090559.56944c45@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5729 invoked by uid 550); 19 May 2015 11:33:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5702 invoked from network); 19 May 2015 11:33:33 -0000
Message-ID: <555B1F7F.5000902@canonical.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <CAEDdjHdR4LYTL_3BUibrYbiBfB2==aJXXLF0RKxcHQgep_SNSw@mail.gmail.com> <20150519090559.56944c45@redhat.com>
In-Reply-To: <20150519090559.56944c45@redhat.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
CC: Pedro Ribeiro <pedrib@gmail.com>
Date: Tue, 19 May 2015 07:33:19 -0400
From: Marc Deslauriers <marc.deslauriers@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE reject request CVE-2015-8146/8147
To: oss-security@lists.openwall.com, cve-assign@mitre.org

On 2015-05-19 03:05 AM, Tomas Hoger wrote:
> On Tue, 5 May 2015 09:19:20 +0100 Pedro Ribeiro wrote:
> 
>> tl;dr heap and integer overflows in ICU, many packages affected,
>> unknown if these can be exploited or not - everyone names vulns
>> nowadays, so I name these I-C-U-FAIL.
> 
> ...
> 
>> #1 Vulnerability: Heap overflow
>> CVE-2014-8146
> 
> ...
> 
>> #2 Vulnerability: Integer overflow
>> CVE-2014-8147
> 
> Apparently a typo was made when fixing these issues in Ubuntu and
> subsequently in Debian when ids with year 2015 were used instead of
> 2014.  Incorrect ids are used in patch names and changelogs, but e.g.
> USN-2605-1 was released with correct ids.  I assume it's still prudent
> to consider 2015 ids for rejection, it's likely they have not been
> allocated yet.
> 
> http://www.ubuntu.com/usn/usn-2605-1/
> https://launchpad.net/ubuntu/+source/icu/52.1-3ubuntu0.3
> https://launchpad.net/ubuntu/+source/icu/52.1-6ubuntu0.3
> https://launchpad.net/ubuntu/+source/icu/52.1-8ubuntu0.1
> 
> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=784773
> 

Ah, crud. Sorry about that.

Marc.

