X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1237" "Monday" "14" "November" "2016" "19:58:01" "+0100" "Sebastian Pipping" "sebastian@pipping.org" "<5147e375-7b26-a93d-b052-85cd8222c9fa@pipping.org>" "49" "Re: [oss-security] Re: CVE needed? / gnuchess 6.2.4 fixed user input buffer overflow" nil nil nil "11" "2016111418:58:01" "[oss-security] Re: CVE needed? / gnuchess 6.2.4 fixed user input buffer overflow" (number mark "U       sebastian@pi Nov 14   49/1237  " thread-indent "\"Re: [oss-security] Re: CVE needed? / gnuchess 6.2.4 fixed user input buffer overflow\"\n") "<035e3ddda98d4ac9aea967809fd37fd9@imshyb02.MITRE.ORG>" ("<035e3ddda98d4ac9aea967809fd37fd9@imshyb02.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1569 invoked by uid 550); 14 Nov 2016 18:58:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1551 invoked from network); 14 Nov 2016 18:58:13 -0000
To: oss-security@lists.openwall.com
References: <035e3ddda98d4ac9aea967809fd37fd9@imshyb02.MITRE.ORG>
Cc: Antonio Ceballos <aceballos@gmail.com>
From: Sebastian Pipping <sebastian@pipping.org>
Message-ID: <5147e375-7b26-a93d-b052-85cd8222c9fa@pipping.org>
Date: Mon, 14 Nov 2016 19:58:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <035e3ddda98d4ac9aea967809fd37fd9@imshyb02.MITRE.ORG>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Df-Sender: aGFydHdvcmtAYmluZXJhLmRl
Subject: Re: [oss-security] Re: CVE needed? / gnuchess 6.2.4 fixed user input
 buffer overflow

Thanks for pointing to -u / UCI mode.

I guess it does make sense to request/assign a CVE then.

The initial report seems to be by Antti Karjalainen at
http://lists.gnu.org/archive/html/bug-gnu-chess/2015-10/msg00002.html .

Best, Sebastian


On 14.11.2016 10:42, cve-assign@mitre.org wrote:
> The reference for this bug is:
> 
>   http://svn.savannah.gnu.org/viewvc?view=rev&root=chess&revision=134
> 
>> may need some other application in front (e.g. a website
>> using gnuchess for a backend or some mobile/desktop application
>> forwarding evil input to gnuchess with improper validation) to attack.
> 
> Is it vulnerable without such an application if launched as
> "gnuchess -u" (UCI mode)? For example, is it taking untrusted input of
> 4096 characters and sending it to the ValidateMove function that is
> expecting 128?
> 
> 
>   #define BUF_SIZE 4096
> 
>   #define MAXSTR 128
> 
> 
>   if ( flags & UCI )
>   ...
>   NextEngineCmd();
>   ...
>   ReadFromEngine();
> 
> 
>   static char engineinputbuf[BUF_SIZE]="";
> 
> 
>   nread = read( pipefd_a2f[0], engineinputaux, BUF_SIZE );
>   strcat( engineinputbuf, engineinputaux );
> 
> 
>   char enginemovestr[BUF_SIZE]="";
>   enginemove = ValidateMove( enginemovestr );
> 
> 

