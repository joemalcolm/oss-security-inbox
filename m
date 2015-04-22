X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1209" "Wednesday" "22" "April" "2015" "17:25:08" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<Pine.LNX.4.64.1504221723230.26645@beijing.mitre.org>" "36" "Re: [oss-security] Re: CVEs for Drupal contributed modules - January 2015" nil nil nil "4" "2015042221:25:08" "[oss-security] Re: CVEs for Drupal contributed modules - January 2015" (number mark "        cve-assign@m Apr 22   36/1209  " thread-indent "\"Re: [oss-security] Re: CVEs for Drupal contributed modules - January 2015\"\n") "<13169_1429652014_5536C22E_13169_11798_1_CAMYtjAp2RbrRnqug5McfpkFw6bZNM5jsqwAEbDDVzeb8SuJ_Lg@mail.gmail.com>" ("<CAMYtjAopk9B-oHykyodXr3OpD_rUKmsTPk7Tuu2ZthtPa7rCgg@mail.gmail.com>" "<CAMYtjAqVfa_QgM5WjvG+gD5snNKp2p5RuGWn340XiGdT-D1AAg@mail.gmail.com>" "<Pine.LNX.4.64.1504211351080.15902@beijing.mitre.org>" "<13169_1429652014_5536C22E_13169_11798_1_CAMYtjAp2RbrRnqug5McfpkFw6bZNM5jsqwAEbDDVzeb8SuJ_Lg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32669 invoked by uid 550); 22 Apr 2015 21:25:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32651 invoked from network); 22 Apr 2015 21:25:20 -0000
X-Authentication-Warning: beijing.mitre.org: coley owned process doing -bs
X-X-Sender: coley@beijing.mitre.org
In-Reply-To: <13169_1429652014_5536C22E_13169_11798_1_CAMYtjAp2RbrRnqug5McfpkFw6bZNM5jsqwAEbDDVzeb8SuJ_Lg@mail.gmail.com>
Message-ID: <Pine.LNX.4.64.1504221723230.26645@beijing.mitre.org>
References: <CAMYtjAopk9B-oHykyodXr3OpD_rUKmsTPk7Tuu2ZthtPa7rCgg@mail.gmail.com>
 <CAMYtjAqVfa_QgM5WjvG+gD5snNKp2p5RuGWn340XiGdT-D1AAg@mail.gmail.com>
 <Pine.LNX.4.64.1504211351080.15902@beijing.mitre.org>
 <13169_1429652014_5536C22E_13169_11798_1_CAMYtjAp2RbrRnqug5McfpkFw6bZNM5jsqwAEbDDVzeb8SuJ_Lg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 22 Apr 2015 17:25:08 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVEs for Drupal contributed modules - January
 2015
To: Pere Orga <pere@orga.cat>


On Tue, 21 Apr 2015, Pere Orga wrote:

> On Tue, Apr 21, 2015 at 7:52 PM,  <cve-assign@mitre.org> wrote:
>>
>
> [...]
>
>>> SA-CONTRIB-2015-033 - Certify - Access bypass
>>> SA-CONTRIB-2015-033 - Certify - Information disclosure
>>> https://www.drupal.org/node/2415947
>>
>>
>> It is not clear whether there should be a single CVE or multiple CVEs.
>>
>> Both "Access bypass" and "Information Disclosure" are mentioned in
>> <font color="FF0000"><i>SA-CONTRIB-2015-033, along with the phrase "Multiple
>> vulnerabilities."
>> However, SA-CONTRIB-2015-033 also says that "The module does not
>> sufficiently check node access when showing (and creating) the PDF
>> certificates. This can lead to users seeing certificates they should
>> not have access to."  This suggests a single root cause - lack of node
>> access checks - which could lead to information disclosure.  If so,
>> then from the CVE perspective, this would be one vulnerability and one
>> ID would be assigned.
>>
>
> Yes, that sounds right.

Use CVE-2015-3404.

---

CVE assignment team, MITRE CVE Numbering Authority M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
