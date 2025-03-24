Received: (qmail 23644 invoked by uid 550); 24 Mar 2025 22:34:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29696 invoked from network); 24 Mar 2025 21:49:53 -0000
Date: Mon, 24 Mar 2025 21:40:01 +0000
From: Kevin Daudt <me@ikke.info>
To: oss-security@lists.openwall.com
Message-ID: <Z-HRMRBvjT8SA1Jo@85ae8e0b7255>
References: <CAM62Sm+vJ9YomjArHHzBZwKvVBqnpZZQkCZOCfYTCsHfsn20tw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAM62Sm+vJ9YomjArHHzBZwKvVBqnpZZQkCZOCfYTCsHfsn20tw@mail.gmail.com>
Subject: Re: [oss-security] [kubernetes] Multiple vulnerabilities in
 ingress-nginx
X-Spam: Yes

On Mon, Mar 24, 2025 at 02:38:17PM -0500, Tabitha Sable wrote:
> Hello oss-sec,
> 
> Multiple issues have been discovered in ingress-nginx that can result in
> arbitrary code execution in the context of the ingress-nginx controller.
> This can lead to disclosure of Secrets accessible to the controller. (Note
> that in the default installation, the controller can access all Secrets
> cluster-wide.)
> 
> The most serious of these issues has been rated Critical (
> CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H
> <https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H>)
> (Score: 9.8), and assigned CVE-2025-1974.
> Am I vulnerable?
> 
>    -
> 
>    This issue affects ingress-nginx. If you do not have ingress-nginx
>    installed on your cluster, you are not affected.
>    -
> 
>    You can check this by running kubectl get pods --all-namespaces
>    --selector app.kubernetes.io/name=ingress-nginx
> 
> Affected Versions
> 
>    -
> 
>    All versions prior to v1.11.0
>    -
> 
>    v1.11.0 - 1.11.4
>    -
> 
>    v1.12.0
> 
> How do I mitigate this vulnerability?
> 
> ACTION REQUIRED: The following steps must be taken to mitigate these
> vulnerabilities: Upgrade ingress-nginx to v1.11.5, v1.12.1, or any later
> version.
> 
> Before applying the patch, these issues can be partially mitigated by
> disabling the Validating Admission Controller functionality of
> ingress-nginx.
> Fixed Versions
> 
>    -
> 
>    v1.11.5
>    -
> 
>    v1.12.1

Apparently these versions have not been released yet[0]. So for the
moment, only the partial mitigation can be done.

[0]: https://github.com/kubernetes/kubernetes/issues/131005#issuecomment-2749372605

> 
> To upgrade, refer to the documentation: Upgrading Ingress-nginx
> <https://kubernetes.github.io/ingress-nginx/deploy/upgrade/>
> Detection
> 
> If you find evidence that these vulnerabilities have been exploited, please
> contact security@kubernetes.io
> Additional Details
> 
> See these GitHub issues for more details:
> CVE-2025-24513: https://github.com/kubernetes/kubernetes/issues/131005
> 
> CVE-2025-24514: https://github.com/kubernetes/kubernetes/issues/131006
> 
> CVE-2025-1097: https://github.com/kubernetes/kubernetes/issues/131007
> 
> CVE-2025-1098: https://github.com/kubernetes/kubernetes/issues/131008
> 
> CVE-2025-1974: https://github.com/kubernetes/kubernetes/issues/131009
> Acknowledgements
> 
> These vulnerabilities were reported by Nir Ohfeld, Ronen Shustin, Sagi
> Tzadik, and Hillai Ben Sasson, from Wiz
> 
> These issues were fixed and coordinated by Marco Ebert, James Strong,
> Tabitha Sable, and the Kubernetes Security Response Committee
> 
> Thank You,
> 
> Tabitha Sable, on behalf of the Kubernetes Security Response Committee
