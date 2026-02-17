Received: (qmail 8025 invoked by uid 550); 18 Feb 2026 00:15:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1755 invoked from network); 17 Feb 2026 23:14:10 -0000
Date: Wed, 18 Feb 2026 00:14:01 +0100 (CET)
From: Jan Engelhardt <ej@inai.de>
To: oss-security@lists.openwall.com
cc: Sam James <sam@gentoo.org>
In-Reply-To: <87a4x7awxe.fsf@josefsson.org>
Message-ID: <46s1o312-qrro-qp69-7oq8-61psn0nnr4o6@vanv.qr>
References: <87seazqslh.fsf@gentoo.org> <87a4x7awxe.fsf@josefsson.org>
User-Agent: Alpine 2.26 (LSU 649 2022-06-02)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [oss-security] Re: zlib security audit by 7asecurity


On Tuesday 2026-02-17 22:21, Simon Josefsson wrote:
>Sam James <sam@gentoo.org> writes:
>
>> * ZLB-01-001 WP2: Heap Buffer Overflow via Legacy gzprintf Implementation (High)
>
>That vulnerability seems to require that zlib was built with
>-DNO_vsnprintf -DNO_snprintf, targetting a system lacking 'snprintf'.
>
>Does anyone know of a real-world environment using that configuration?

Does Borland C++ 1.01 for DOS count?
