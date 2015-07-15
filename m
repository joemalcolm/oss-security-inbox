X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1260" "Tuesday" "14" "July" "2015" "17:58:19" "-0700" "Anthony Liguori" "aliguori@amzn.com" "<cig332lhei9qz8.fsf@u54ee75415b8454d5169f.ant.amazon.com>" "35" "Re: [oss-security] CVE Request: AWS s2n" nil nil nil "7" "2015071500:58:19" "[oss-security] CVE Request: AWS s2n" (number mark "        aliguori@amz Jul 14   35/1260  " thread-indent "\"Re: [oss-security] CVE Request: AWS s2n\"\n") "<55A5A594.9040100@redhat.com>" ("<55A525D8.5060303@lsexperts.de>" "<55A52F41.8070702@redhat.com>" "<55A58720.6020105@lsexperts.de>" "<55A5A594.9040100@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3137 invoked by uid 550); 17 Jul 2015 00:34:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22107 invoked from network); 15 Jul 2015 00:58:38 -0000
X-IronPort-AV: E=Sophos;i="5.15,476,1432598400"; 
   d="scan'208";a="279382070"
In-Reply-To: <55A5A594.9040100@redhat.com>
References: <55A525D8.5060303@lsexperts.de> <55A52F41.8070702@redhat.com> <55A58720.6020105@lsexperts.de> <55A5A594.9040100@redhat.com>
User-Agent: Notmuch/0.17 (http://notmuchmail.org) Emacs/24.3.1 (x86_64-pc-linux-gnu)
Message-ID: <cig332lhei9qz8.fsf@u54ee75415b8454d5169f.ant.amazon.com>
MIME-Version: 1.0
Content-Type: text/plain
Date: Tue, 14 Jul 2015 17:58:19 -0700
From: Anthony Liguori <aliguori@amzn.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: AWS s2n
To: Kurt Seifried <kseifried@redhat.com>, oss-security@lists.openwall.com,
        Assign a CVE Identifier <cve-assign@mitre.org>,
        Colm MacCarthaigh <colmmacc@amzn.com>

Kurt Seifried <kseifried@redhat.com> writes:

> On 07/14/2015 04:03 PM, Markus Vervier wrote:
>> 
>> On 14.07.2015 17:48, Kurt Seifried wrote:
>>> Reminder: Client mode is disabled and won't be enabled until X509 validation is ready. But we
>> can still make improvements and fixes in the meantime.
>>> so I'm not sure this needs a CVE as the code is not yet enabled.
>> Hi Kurt,
>> 
>> that is a valid point from you and not for me to decide.
>> Yet with default settings a binary is compiled (bin/s2nc) which will
>> work in client mode when environment variable S2N_ENABLE_CLIENT_MODE=1
>> is set (as documented). So it is possible several people were tempted to
>> use s2n in client mode already as the client mode code is actually
>> compiled into the lib and useable by default.
>> I guess it depends on your definition of "enabled".
>> 
>> Markus
>
> Ah, I didn't know that, Mitre I'm leaving this one up to you (way to
> much of a gray area for me to even poke with a stick).

Adding Colm from s2n upstream in case he would like to comment here.

Regards,

Anthony Liguori

>
>
> -- 
> Kurt Seifried -- Red Hat -- Product Security -- Cloud
> PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
> Red Hat Product Security contact: secalert@redhat.com
