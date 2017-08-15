X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["392" "Tuesday" "15" "August" "2017" "22:31:01" "+0300" "Henri Salo" "henri@nerv.fi" "<20170815193101.unvd2iexsbnilpy3@tunkki>" "11" "Re: [oss-security] [CVE-2017-9608] null-point-exception happened when ffmpeg using dnxhd decoder to parsing a crafted mv file." nil nil nil "8" "2017081519:31:01" "[oss-security] [CVE-2017-9608] null-point-exception happened when ffmpeg using dnxhd decoder to parsing a crafted mv file." (number mark "U       henri@nerv.f Aug 15   11/392   " thread-indent "\"Re: [oss-security] [CVE-2017-9608] null-point-exception happened when ffmpeg using dnxhd decoder to parsing a crafted mv file.\"\n") "<A962A2D04FAB5C4499FEFD15B642FA0A33288BDA@EX02.corp.qihoo.net>" ("<A962A2D04FAB5C4499FEFD15B642FA0A33288BDA@EX02.corp.qihoo.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24489 invoked by uid 550); 15 Aug 2017 19:31:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24461 invoked from network); 15 Aug 2017 19:31:42 -0000
X-Virus-Scanned: Debian amavisd-new at coconut.nerv.fi
Date: Tue, 15 Aug 2017 22:31:01 +0300
From: Henri Salo <henri@nerv.fi>
To: =?utf-8?B?6L+e5LiA5rGJ?= <lianyihan@360.cn>
Cc: oss-security@lists.openwall.com
Message-ID: <20170815193101.unvd2iexsbnilpy3@tunkki>
References: <A962A2D04FAB5C4499FEFD15B642FA0A33288BDA@EX02.corp.qihoo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <A962A2D04FAB5C4499FEFD15B642FA0A33288BDA@EX02.corp.qihoo.net>
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [oss-security] [CVE-2017-9608] null-point-exception happened
 when ffmpeg using dnxhd decoder to parsing a crafted mv file.

On Mon, Aug 14, 2017 at 09:52:51AM +0000, 连一汉 wrote:
> I found a vulnerability of ffmpeg-3.3.2.
> FFmpeg could be crashed when it is parsing a crafted mov file.
> ffmpeg -c:v dnxhd -i poc.mov -y output.ts
> Use CVE-2017-9608.

Have you reported this issue to the upstream? Did you test this case against
latest development branch? https://www.ffmpeg.org/bugreports.html

-- 
Henri Salo
