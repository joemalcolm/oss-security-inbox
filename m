Received: (qmail 3183 invoked by uid 550); 4 Feb 2023 12:27:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12087 invoked from network); 3 Feb 2023 23:28:31 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: John Gemignani <jgemignani@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8e472345-672c-faca-1a76-e77d9a0992d3@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Feb 2023 23:28:16 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-45786: Apache AGE: Python and Golang drivers allow data
 manipulation and exposure due to SQL injection 

Severity: important

Description:

There are issues with the AGE drivers for Golang and Python that enable SQL=
 injections to occur. This impacts AGE for PostgreSQL 11 & AGE for PostgreS=
QL 12, all versions up-to-and-including 1.1.0, when using those drivers.

The fix is to update to the latest Golang and Python drivers in addition to=
 the latest version of AGE that is used for PostgreSQL 11 or=C2=A0 PostgreS=
QL 12.

The update of AGE will add a new function to enable parameterization of the=
 cypher() function, which, in conjunction with the driver updates, will res=
olve this issue.

Background (for those who want more information):

After thoroughly researching this issue, we found that due to the nature of=
 the cypher() function, it was not easy to parameterize the values passed i=
nto it. This enabled SQL injections, if the developer of the driver wasn't =
careful. The developer of the Golang and Pyton drivers didn't fully utilize=
 parameterization, likely because of this, thus enabling SQL injections.

The obvious fix to this issue is to use parameterization in the drivers for=
 all PG SQL queries. However, parameterizing all PG queries is complicated =
by the fact that the cypher() function call itself cannot be parameterized =
directly, as it isn't a real function. At least, not the parameters that wo=
uld take the graph name and cypher query.

The reason the cypher() function cannot have those values parameterized is =
because the function is a placeholder and never actually runs. The cypher()=
 function node, created by PG in the query tree, is transformed and replace=
d with a query tree for the actual cypher query during the analyze phase. T=
he problem is that parameters - that would be passed in and that the cypher=
() function transform needs to be resolved - are only resolved in the execu=
tion phase, which is much later. Since the transform of the cypher() functi=
on needs to know the graph name and cypher query prior to execution, they c=
an't be passed as parameters.

The fix that we are testing right now, and are proposing to use, is to crea=
te a function that will be called prior to the execution of the cypher() fu=
nction transform. This new function will allow values to be passed as param=
eters for the graph name and cypher query. As this command will be executed=
 prior to the cypher() function transform, its values will be resolved. The=
se values can then be cached for the immediately following cypher() functio=
n transform to use. As added features, the cached values will store the cal=
ling session's pid, for validation. And, the cypher() function transform wi=
ll clear this cached information after function invocation, regardless of w=
hether it was used.

This method will allow the parameterizing of the cypher() function indirect=
ly and provide a way to lock out SQL injection attacks.

References:

https://age.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2022-45786

