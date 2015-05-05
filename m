X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["549" "Tuesday" "5" "May" "2015" "09:44:00" "+0200" "Florian Weimer" "fweimer@redhat.com" "<554874C0.509@redhat.com>" "17" "Re: [oss-security] PHP and some == wonkiness" nil nil nil "5" "2015050507:44:00" "[oss-security] PHP and some == wonkiness" (number mark "        fweimer@redh May  5   17/549   " thread-indent "\"Re: [oss-security] PHP and some == wonkiness\"\n") "<20150505072248.GA14223@zoho.com>" ("<55479C75.3070000@redhat.com>" "<CALwr1GnxttdqOssUd82R4P8wzEd-UhuWWVY3xpkqgt09UmgBuw@mail.gmail.com>" "<554868F6.1070305@redhat.com>" "<20150505072248.GA14223@zoho.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25943 invoked by uid 550); 5 May 2015 07:44:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25922 invoked from network); 5 May 2015 07:44:16 -0000
Message-ID: <554874C0.509@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <55479C75.3070000@redhat.com> <CALwr1GnxttdqOssUd82R4P8wzEd-UhuWWVY3xpkqgt09UmgBuw@mail.gmail.com> <554868F6.1070305@redhat.com> <20150505072248.GA14223@zoho.com>
In-Reply-To: <20150505072248.GA14223@zoho.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Date: Tue, 05 May 2015 09:44:00 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] PHP and some == wonkiness
To: mancha <mancha1@zoho.com>, oss-security@lists.openwall.com

On 05/05/2015 09:26 AM, mancha wrote:

> Taking sha1 as our reference hash and "==" as our equivalence relation:
> 
> All [a-f][0-9a-f]{39} are in equivalence class A.
> 
> All 42[a-f][0-9a-f]{37} are in equivalence class B.
> 
> Note: those regexes aren't representative of the full equivalence
> classes because prepending 0s doesn't alter the value (i.e.
> 0[a-f][0-9a-f]{38} is in equivalence class "A" as well..

I cannot reproduce this.  Or you use “equivalence class” in a
non-standard way.

-- 
Florian Weimer / Red Hat Product Security
