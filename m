Received: (qmail 4023 invoked by uid 550); 9 Aug 2022 11:52:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3993 invoked from network); 9 Aug 2022 11:52:39 -0000
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vulndisco.cc; s=mail; t=1660045837;
	bh=rKTxLBIydD3uH/rvicZi9u/Gsk1fZGGjkIu/dhSgcuo=;
	h=Subject:From:To:Date:Message-ID;
	b=mmZEzHskgpRTfIwje5+JsCxzRWQ1Yzak8qpRWWfGyKqowAHPdGjrvoueQBiPmpyJf
	 vPq3xa2rYgNdEQkjNFkieDeNa3w4/xTrUcuDzMbikZDzoBL2iD0YMMpWuzYdG1rtKb
	 tf5iSxJUi/cWptz4GMPPTUWad6VGJ2qXQNGV9XaI=
Authentication-Results: sas2-cc22fd2335f8.qloud-c.yandex.net; dkim=pass header.i=@vulndisco.cc
Message-ID: <6aa96d55-36b5-9053-913c-d37a25c8ca48@vulndisco.cc>
Date: Tue, 9 Aug 2022 14:50:34 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Evgeny Legerov <admin@vulndisco.cc>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Apache mod_dav off-by-one

Hi,


How it happens that Apache process_if_header off-by-one, which has been 
mentioned in

The Art of Software Security Assessment (page 420), still remains unpatched?

What am I missing?


The code from Apache 2.4.54:

static dav_error * dav_process_if_header(request_rec *r, dav_if_header 
**p_ih)
{
...

      while (*list) {
                 /* List is the entire production (in a uri scope) */

                 switch (*list) {
                 ...
                 case 'N':
                     if (list[1] == 'o' && list[2] == 't') {
                         if (condition != DAV_IF_COND_NORMAL) {
                             return dav_new_error(r->pool, HTTP_BAD_REQUEST,
DAV_ERR_IF_MULTIPLE_NOT, 0,
                                                  "Invalid \"If:\" header: "
                                                  "Multiple \"not\" 
entries "
                                                  "for the same state.");
                         }
                         condition = DAV_IF_COND_NOT;
                     }
                     list += 2;
                     break;

It is not only out of bounds read, dav_fetch_next_token() will write 
NULL byte on next iteration.


regards,

-e

