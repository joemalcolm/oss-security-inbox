X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2320" "Wednesday" "2" "September" "2015" "22:17:35" "+0200" "Pere Orga" "pere@orga.cat" "<CAMYtjAqx16oC6PfyxiaF30E78QxeXEBHVVeiLRSQ2VQNeU=uiQ@mail.gmail.com>" "74" "Re: [oss-security] CVE requests for Drupal contributed modules (from SA-CONTRIB-2015-100 to SA-CONTRIB-2015-131)" nil nil nil "9" "2015090220:17:35" "[oss-security] CVE requests for Drupal contributed modules (from SA-CONTRIB-2015-100 to SA-CONTRIB-2015-131)" (number mark "U       pere@orga.ca Sep  2   74/2320  " thread-indent "\"Re: [oss-security] CVE requests for Drupal contributed modules (from SA-CONTRIB-2015-100 to SA-CONTRIB-2015-131)\"\n") "<Pine.LNX.4.64.1508181228030.30440@beijing.mitre.org>" ("<CAMYtjAoKVQONvGAAR57C7gWyzgy3VsdUdCt=Ezv7C3=xc8LWXg@mail.gmail.com>" "<Pine.LNX.4.64.1508181228030.30440@beijing.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4032 invoked by uid 550); 2 Sep 2015 20:18:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4014 invoked from network); 2 Sep 2015 20:18:08 -0000
X-Received: by 10.140.86.212 with SMTP id p78mr204792qgd.25.1441225074693;
 Wed, 02 Sep 2015 13:17:54 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.1508181228030.30440@beijing.mitre.org>
References: <CAMYtjAoKVQONvGAAR57C7gWyzgy3VsdUdCt=Ezv7C3=xc8LWXg@mail.gmail.com>
 <Pine.LNX.4.64.1508181228030.30440@beijing.mitre.org>
From: Pere Orga <pere@orga.cat>
Date: Wed, 2 Sep 2015 22:17:35 +0200
Message-ID: <CAMYtjAqx16oC6PfyxiaF30E78QxeXEBHVVeiLRSQ2VQNeU=uiQ@mail.gmail.com>
To: cve-assign@mitre.org
Cc: Security Team <security@drupal.org>, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3111.hostgator.com
X-AntiAbuse: Original Domain - lists.openwall.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - orga.cat
X-BWhitelist: no
X-Source-IP: 209.85.192.52
X-Exim-ID: 1ZXETj-0006kM-Lz
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (mail-qg0-f52.google.com) [209.85.192.52]:34336
X-Source-Auth: pere@orga.cat
X-Email-Count: 2
X-Source-Cap: bmV0b2w7bmV0b2w7Z2F0b3IzMTExLmhvc3RnYXRvci5jb20=
Subject: Re: [oss-security] CVE requests for Drupal contributed modules (from
 SA-CONTRIB-2015-100 to SA-CONTRIB-2015-131)

Hi

On Tue, Aug 18, 2015 at 6:30 PM,  <cve-assign@mitre.org> wrote:

[..]

>> Novalnet Payment Module Ubercart - SQL Injection - SA-CONTRIB-2015-116
>> https://www.drupal.org/node/2499787
>
>
>> The module fails to sanitize a database query by not using the database
>> API properly, thereby leading to a SQL Injection vulnerability.
>
>
> Use CVE-2015-5504.
>
>> Since the affected path is not protected against CSRF, a malicious user
>> can
>> exploit this vulnerability by triggering a request to a specially-crafted
>> URL.
>
>
> It is not clear to us if this CSRF issue is exploitable.  The attack
> seems to be against a Novalnet employee, but it is not known if
> Novalnet employees have access to the specific IP in a way that would
> make the exploit feasible.
>

At the time Novalnet was notified, they did not provide any details
but acknowledged the issue and stated their will to fix it. It is not
certain if the issue is exploitable.

>> Novalnet Payment Module Drupal Commerce - SQL Injection -
>> SA-CONTRIB-2015-117
>> https://www.drupal.org/node/2499791
>
>
> We believe that the Novalnet Payment Module Drupal Commerce module may
> share a codebase with the Novalnet Payment Module Ubercart module in
> SA-CONTRIB-2015-116.
>
> If you can confirm that the vulnerable code in SA-CONTRIB-2015-117 is
> different from the code in SA-CONTRIB-2015-116, then we will issue a
> separate CVE ID.  Otherwise, use CVE-2015-5504 for this vulnerability.
>

It is the same vulnerable code, so we'll reuse CVE-2015-5504.

[..]

>> jQuery Update - Open Redirect - SA-CONTRIB-2015-123
>> https://www.drupal.org/node/2507729
>>
>> LABjs - Open Redirect - SA-CONTRIB-2015-124
>> https://www.drupal.org/node/2507735
>>
>> Acquia Cloud Site Factory Connector - Open Redirect - SA-CONTRIB-2015-125
>> https://www.drupal.org/node/2507741
>
>
> A new CVE might not be necessary.
>
> We believe that SA-CONTRIB-2015-123, SA-CONTRIB-2015-124, and
> SA-CONTRIB-2015-125 share the same codebase (Overlay JavaScript file)
> as the Overlay module in SA-CORE-2015-002, which has been issued
> CVE-2015-3233.

Yes, these projects were affected in the same way because they shared
the same vulnerable code of Drupal core. Reusing CVE-2015-3233.

Updating our records, thanks.

Regards
Pere Orga on behalf of the Drupal Security Team
