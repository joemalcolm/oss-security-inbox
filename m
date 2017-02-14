X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1786" "Tuesday" "14" "February" "2017" "09:29:48" "+0000" "=?UTF-8?B?U8OpYmFzdGllbg==?= Delafond" "seb@debian.org" "<20170214102635.329@usenet.piggo.com>" "45" "[oss-security] Re: CVE request: XXE in Openpyxl" nil nil nil "2" "2017021409:29:48" "[oss-security] Re: CVE request: XXE in Openpyxl" (number mark "U       seb@debian.o Feb 14   45/1786  " thread-indent "\"[oss-security] Re: CVE request: XXE in Openpyxl\"\n") "<20170214012459.GA11244@sin.redhat.com>" ("<20170207104854.331@usenet.piggo.com>" "<20170207235746.GA13577@sin.redhat.com>" "<20170213112557.381@usenet.piggo.com>" "<20170214012459.GA11244@sin.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3121 invoked by uid 550); 14 Feb 2017 09:31:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1688 invoked from network); 14 Feb 2017 09:30:15 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: =?UTF-8?Q?S=C3=A9bastien?= Delafond <seb@debian.org>
Date: Tue, 14 Feb 2017 09:29:48 +0000 (UTC)
Message-ID: <20170214102635.329@usenet.piggo.com>
References: <20170207104854.331@usenet.piggo.com>
 <20170207235746.GA13577@sin.redhat.com>
 <20170213112557.381@usenet.piggo.com>
 <20170214012459.GA11244@sin.redhat.com>
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: slrn/1.0.3 (Linux)
Subject: [oss-security] Re: CVE request: XXE in Openpyxl

On 2017-02-14, Doran Moppert <dmoppert@redhat.com> wrote:
> My mistake - thanks for bringing this up!
>
> It appears that resolve_entities=False (ie. options &=
> ~XML_PARSE_NOENT) does *not* affect the expansion of predefined
> entities or character entities.  See [1], [2] and parser.c +
> HTMLparser.c in libxml source.
>
> 1: https://www.xml.com/pub/a/98/08/xmlqna1.html
> 2: https://en.wikipedia.org/wiki/List_of_XML_and_HTML_character_entity_references
>
> These flags *do* control the expansion of internal entities, but I
> expect that most common protocols and file formats should not rely on
> those - including Excel.  As long as openpyxl has no need to resolve
> internal entities, nor perform DTD validation, CVE-2016-9318 is not
> relevant and the proposed patch looks correct.
>
>
> So yes, the original CVE request was valid and should go ahead:

@MITRE, can you assign one directly, since this request pre-dates the
requirement of going through the web form, or should I resubmit there
anyway ?

>> the Debian Security Team would like to request a CVE for an XML XEE
>> discovered in Openpyxl by Marcin Ulikowski from F-Secure; Openpyxl
>> resolves external entities by default:
>> 
>>   https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=854442
>>   https://bitbucket.org/openpyxl/openpyxl/commits/3b4905f428e1
>
> Also: https://bitbucket.org/openpyxl/openpyxl/issues/749

> Sorry about muddying the water with misunderstanding(s).  The tricky
> part of CVE-2016-9318 seems to be particular requirements of
> components like xmlsec that want internal entity resolution without
> XXE, or DTD validation without exposing the whole filesystem.

No problem at all, the overall implications of CVE-2016-9318 and entity
resolution are indeed pretty complex.

Cheers,

--Seb

