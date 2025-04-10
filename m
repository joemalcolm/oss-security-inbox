Received: (qmail 1033 invoked by uid 550); 10 Apr 2025 00:20:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32754 invoked from network); 10 Apr 2025 00:20:57 -0000
Message-ID: <6a68cc9b-1667-4afe-9400-070315bf7563@pipping.org>
Date: Thu, 10 Apr 2025 02:20:48 +0200
MIME-Version: 1.0
To: oss-security@lists.openwall.com, =?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?=
 <bero@lindev.ch>
References: <c91c769394051f886c25f8bf895ec770dce36a73.04827fe8.a43c.41dd.9fe9.7f451462d2d9@feishu.cn>
 <94ed5662-d24b-40e4-b832-6228a7e473df@pipping.org>
 <543-67f6e580-2d-5396a400@170623133>
Content-Language: en-US
From: Sebastian Pipping <sebastian@pipping.org>
In-Reply-To: <543-67f6e580-2d-5396a400@170623133>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] CVE-2025-31344: giflib: The giflib open-source
 component has a buffer overflow vulnerability.

Hello Bernhard,


On 09.04.25 23:23, Bernhard Rosenkränzer wrote:
> On Wednesday, April 09, 2025 23:11 CEST, Sebastian Pipping <sebastian@pipping.org> wrote:
>>     https://github.com/openwrt/packages/issues/26277
> 
> Except for https://sourceforge.net/p/giflib/bugs/179/, all the issues seem to be in gif2rgb, which is, according to the giflib maintainer, "old and crappy code", and TBH, other than as a no-dependency test tool for giflib, it is fairly useless (just use ImageMagick or a similar tool to do the gif to rgb conversion).
> Simply removing the gif2rgb tool is probably an acceptable solution.

I understand your take (and I believe Red Hat does just that: not 
include it with packaging [1]).

I would like to note that gif2rgb is currently shipped with e.g. Ubuntu
[2] and so just dropping that tool will break something somewhere.

On a side note ImageMagick (7.1.1.38) seems to ignore logical screen
size (section "18. Logical Screen Descriptor" of the spec [3]) in GIF
files:

   # file max_size.gif
   max_size.gif: GIF image data, version 89a, 65535 x 65535
                                              ^^^^^^^^^^^^^
   # magick max_size.gif max_size.png

   # file max_size.png
   max_size.png: PNG image data, 1 x 1, 8-bit gray+alpha, non-interlaced
                                 ^^^^^
Either I misunderstand the GIF spec or ImageMagick goes against
the spec and mis-converts this image.  (I tried other sizes to
be sure it's not an integer overflow issue but intention.)
So ImageMagick so far would not be my goto for GIF.  Happy to learn what
I'm missing.

So far I'm personally in favor of collaborative repair rather than
removal.  I'm probably biased because sibling tool gifbuild already
proved useful to me.

Best



Sebastian


[1] https://github.com/openela-main/giflib/blob/el9/SPECS/giflib.spec
[2] https://packages.ubuntu.com/oracular/amd64/giflib-tools/filelist
[3] https://www.w3.org/Graphics/GIF/spec-gif89a.txt

