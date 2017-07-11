X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["418" "Tuesday" "11" "July" "2017" "14:59:09" "+0200" "Jonas Thiem" "jonas@thiem.email" "<62d1bbfa-25f2-427c-e5ca-8edadc525800@thiem.email>" "12" "Re: [oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)" "^Date:" nil nil "7" "2017071112:59:09" "[oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)" (number mark "        jonas@thiem. Jul 11   12/418   " thread-indent "\"Re: [oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)\"\n") "<20170711100202.27a42e9b@sturbolzen>" ("<801547.452199401-sendEmail@localhost>" "<20170710114253.44fc7ac0@cortex.rrz.uni-hamburg.de>" "<CALx_OUDSOWt=z01KSv81tqsyUO1hNas0NF_aAzXRzqMKM9u89A@mail.gmail.com>" "<308352c2-f020-aa8b-0ea7-f4cc7b14ada2@redhat.com>" "<20170711100202.27a42e9b@sturbolzen>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26619 invoked by uid 550); 11 Jul 2017 15:07:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28573 invoked from network); 11 Jul 2017 12:59:25 -0000
References: <801547.452199401-sendEmail@localhost>
 <20170710114253.44fc7ac0@cortex.rrz.uni-hamburg.de>
 <CALx_OUDSOWt=z01KSv81tqsyUO1hNas0NF_aAzXRzqMKM9u89A@mail.gmail.com>
 <308352c2-f020-aa8b-0ea7-f4cc7b14ada2@redhat.com>
 <20170711100202.27a42e9b@sturbolzen>
Message-ID: <62d1bbfa-25f2-427c-e5ca-8edadc525800@thiem.email>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20170711100202.27a42e9b@sturbolzen>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Date: Tue, 11 Jul 2017 14:59:09 +0200
From: Jonas Thiem <jonas@thiem.email>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] mpg123: global buffer overflow in III_i_stereo
 (layer3.c)
To: oss-security@lists.openwall.com,
 "Dr. Thomas Orgis" <thomas.orgis@uni-hamburg.de>



On 11.07.2017 10:02, Dr. Thomas Orgis wrote:
> My program accesses memory that belongs
> to my program … unless the compiler inserts forbidden zones in there.

So why do you know for sure that no program would store private keys or
other sensitive data there? Or is this only static data by the mp3
library itself?

It seems to me like this could still be a major security issue beyond a
simple denial of service.
