Received: (qmail 21847 invoked by uid 550); 13 Jan 2026 16:14:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17678 invoked from network); 13 Jan 2026 12:34:12 -0000
Date: Tue, 13 Jan 2026 13:34:02 +0100
From: Vincent Lefevre <vincent@vinc17.net>
To: oss-security@lists.openwall.com
Message-ID: <20260113123402.GD279805@cventin.lip.ens-lyon.fr>
Mail-Followup-To: oss-security@lists.openwall.com
References: <f6825a3e-06ba-4672-afc1-171c7ae48d9d@oracle.com>
 <56e7f252-59a4-447c-b8ee-29e647c6bc3b@gmail.com>
 <20260112142559.GA974242@joooj.vinc17.net>
 <6c34559b-d38a-49d3-8917-8ea3d235f77c@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6c34559b-d38a-49d3-8917-8ea3d235f77c@gmail.com>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.16+96 (33c58fb2) vl-169878 (2026-01-07)
Subject: Re: [oss-security] Null Pointer Dereference in HarfBuzz

On 2026-01-12 23:33:37 -0600, Jacob Bachmeyer wrote:
> The issue reported here is a write to address zero causing SIGSEGV.  I doubt
> that compilers can optimize placement new to avoid writing through the given
> pointer without introducing undefined behavior in correct programs, since
> the contents of allocated-but-not-initialized memory are undefined.

Perhaps in the case of HarfBuzz. But this is not necessarily the case
everywhere. Consider the following code:

------------------------------------------------------------
#include <stdio.h>
#include <stdlib.h>

__attribute__((noipa)) // imagine it in a separate TU
int ptest (int *p)
{
  return p != 0;
}

int main (void)
{
  int *p = malloc (99999999999);
  int r = ptest (p);
  p[0] = 12345;
  free (p);
  printf ("%d\n", r);
  return 0;
}
------------------------------------------------------------

On my machine, with GCC and optimizations (e.g. -O), the output is 0
while such a value could be regarded as impossible by the program
Due to optimizations, one cannot rely on a crash if the memory could
not be allocated. So a more complex program would continue with
inconsistent information.

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)
