Received: (qmail 3310 invoked by uid 550); 21 Dec 2024 18:49:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15844 invoked from network); 21 Dec 2024 17:31:02 -0000
Date: Sat, 21 Dec 2024 18:30:53 +0100 (CET)
From: Jan Engelhardt <ej@inai.de>
To: oss-security@lists.openwall.com
cc: Qualys Security Advisory <qsa@qualys.com>, 
    Douglas Bagnall <douglas.bagnall@catalyst.net.nz>
In-Reply-To: <CAJOtW+5UMd0=ADz6cZdCo_zFaJrkQjzbNQ7N7CZr_UmL1f+sqw@mail.gmail.com>
Message-ID: <4o3s7qss-9q86-1r10-8o07-n706rp37762r@vanv.qr>
References: <CAJOtW+5UMd0=ADz6cZdCo_zFaJrkQjzbNQ7N7CZr_UmL1f+sqw@mail.gmail.com>
User-Agent: Alpine 2.26 (LSU 649 2022-06-02)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [oss-security] Re: Out-of-bounds read & write in the glibc's
 qsort()


On Saturday 2024-12-21 15:29, Yuri Gribov wrote:
>
>I've recently come across discussion of invalid qsort comparators (and
>unpleasant consequences which they may have) at
>https://www.openwall.com/lists/oss-security/2024/01/30/7 and
>https://www.openwall.com/lists/oss-security/2024/06/24/3

For the record, I'll add
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=113159 (2023/12/27)

