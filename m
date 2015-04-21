X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["994" "Tuesday" "21" "April" "2015" "23:32:23" "+0200" "Pere Orga" "pere@orga.cat" "<CAMYtjAp2RbrRnqug5McfpkFw6bZNM5jsqwAEbDDVzeb8SuJ_Lg@mail.gmail.com>" "31" "Re: [oss-security] Re: CVEs for Drupal contributed modules - January 2015" nil nil nil "4" "2015042121:32:23" "[oss-security] Re: CVEs for Drupal contributed modules - January 2015" (number mark "        pere@orga.ca Apr 21   31/994   " thread-indent "\"Re: [oss-security] Re: CVEs for Drupal contributed modules - January 2015\"\n") "<Pine.LNX.4.64.1504211351080.15902@beijing.mitre.org>" ("<CAMYtjAopk9B-oHykyodXr3OpD_rUKmsTPk7Tuu2ZthtPa7rCgg@mail.gmail.com>" "<CAMYtjAqVfa_QgM5WjvG+gD5snNKp2p5RuGWn340XiGdT-D1AAg@mail.gmail.com>" "<Pine.LNX.4.64.1504211351080.15902@beijing.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21506 invoked by uid 550); 21 Apr 2015 21:32:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20457 invoked from network); 21 Apr 2015 21:32:58 -0000
X-Received: by 10.180.90.169 with SMTP id bx9mr113975wib.50.1429651964199;
 Tue, 21 Apr 2015 14:32:44 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.1504211351080.15902@beijing.mitre.org>
References: <CAMYtjAopk9B-oHykyodXr3OpD_rUKmsTPk7Tuu2ZthtPa7rCgg@mail.gmail.com>
 <CAMYtjAqVfa_QgM5WjvG+gD5snNKp2p5RuGWn340XiGdT-D1AAg@mail.gmail.com> <Pine.LNX.4.64.1504211351080.15902@beijing.mitre.org>
Message-ID: <CAMYtjAp2RbrRnqug5McfpkFw6bZNM5jsqwAEbDDVzeb8SuJ_Lg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3111.hostgator.com
X-AntiAbuse: Original Domain - lists.openwall.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - orga.cat
X-BWhitelist: no
X-Source-IP: 209.85.212.172
X-Exim-ID: 1Ykfmf-0006Ei-ST
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (mail-wi0-f172.google.com) [209.85.212.172]:33428
X-Source-Auth: pere@orga.cat
X-Email-Count: 2
X-Source-Cap: bmV0b2w7bmV0b2w7Z2F0b3IzMTExLmhvc3RnYXRvci5jb20=
Cc: oss-security@lists.openwall.com
Date: Tue, 21 Apr 2015 23:32:23 +0200
From: Pere Orga <pere@orga.cat>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVEs for Drupal contributed modules - January 2015
To: cve-assign@mitre.org

On Tue, Apr 21, 2015 at 7:52 PM,  <cve-assign@mitre.org> wrote:
>

[...]

>> SA-CONTRIB-2015-033 - Certify - Access bypass
>> SA-CONTRIB-2015-033 - Certify - Information disclosure
>> https://www.drupal.org/node/2415947
>
>
> It is not clear whether there should be a single CVE or multiple CVEs.
>
> Both "Access bypass" and "Information Disclosure" are mentioned in
> <font color="FF0000"><i>SA-CONTRIB-2015-033, along with the phrase "Multiple
> vulnerabilities."
> However, SA-CONTRIB-2015-033 also says that "The module does not
> sufficiently check node access when showing (and creating) the PDF
> certificates. This can lead to users seeing certificates they should
> not have access to."  This suggests a single root cause - lack of node
> access checks - which could lead to information disclosure.  If so,
> then from the CVE perspective, this would be one vulnerability and one
> ID would be assigned.
>

Yes, that sounds right.

Thank you for all these assignments.


Regards
Pere
