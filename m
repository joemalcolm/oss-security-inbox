Received: (qmail 16172 invoked by uid 550); 11 Dec 2025 15:33:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16145 invoked from network); 11 Dec 2025 15:33:42 -0000
Authentication-Results:garm.ovh; auth=pass (GARM-101G00477ac7859-5077-41b5-8a8c-aa9fecb684f9,
                    E437B5EF12B3DDB834D7FF5FDE2488817C1DCF35) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp:37.248.227.115
Date: Thu, 11 Dec 2025 16:33:29 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20251211153329.ovj6y3sr6udd3c5x@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <7ae55330-061d-41d6-a2c0-e83b2ba16235@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <7ae55330-061d-41d6-a2c0-e83b2ba16235@oracle.com>
X-Ovh-Tracer-Id: 16450523539492318417
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: dmFkZTGK01L0vqCJznngruQ4YsLH7jSuDC/XNCzbJcpt7lT+P9b4KiY1s4lSmuJu3GBy39atQVGQ3m1rsofTf6bDzv0+Nqp8sn4gULxeCe7WwJeYrCcHg5G1D+dwdPoK04ilMn2chyxxn6JtmMdWjre696p8a9lzMKdwyxooHpRNycpuXgbomnkIZT/CDrTy4fJKSYKhDmLI8ml1Bx3UvV2asZ/jleH2JG7bWLunw6OmjDRGY2ARSr4QfC/t/8kxnltaty0HIaA7PA0U+lAANFAfmvXi7szH1qoiAs+uLeGD5aC/DOG6o7UId4HQuYSIXFZyUiuxD/v0oYxtKM2MJABk82tNtF8reG7YKDpcMcVhmGmCRH0yFMBQPaqa5ewSPwJb1yJ2xJUPy6syrWR9qBEcihlP3kmysUO/W1qCFb0oZ0IRoYXtqUsYPxXlrqqq26zaD2Jpzv0NnKn0yD5bzhluNrcJZ2052R9KgUrqAYFuJWCBmuBAtQwBkRLipzLUjICfTJyoKiTmt6Jfwc2LtPvu3JqzXH7rfxMcs7lTZHquRabGdNqRqn604Pq3djuFx7zVunyq4lYbsqcY52uSivPng/4160KABwL7UIdzF5bW/M+Y+ZZ+FaFKm5wzdtFHKj872gyveZ5d4eUCj4IZWbFVQplyEehOHZarDHNOdD52oKGwpg
DKIM-Signature: a=rsa-sha256; bh=N+lFw10sfbcx/qPN7aL92U16yxbNIKct22VljmKqf+E=;
 c=relaxed/relaxed; d=jwilk.net; h=From; s=ovhmo917968-selector1;
 t=1765467212; v=1;
 b=ZAarOg9grVbvCwrlIFZyVCxZVqlfeEEidzzfUImfCdM/Xz3VA5+TavOfnWQM8dwF3QkeCBhh
 Rp0ICeX5wVKB5J+V+eG7STwXOtiGxUnPlp3eY4HjXY9OYm/NTLF2JpS3t1z2YQXgfvXKQncKZrd
 u21sH7Sg3mViSg9uX/3ImHqBes4HzIsh3dGmA5QtpaqMeCap6g6w5EerPi0M2E9+va0WPOqrRQI
 HPS2oKn0n3m4gk7uY95PpWpS8a4l4OrYvREueCuxYFtNvo8PAjQ2IzmE9VMByAccjwWTuEKWPmf
 idO/0puV7LyIN/7HZyr+cdCY0AYlbq1HoWTa1lyUrl2xw==
Subject: Re: [oss-security] CVE-2025-8110 in Gogs self-hosted git service

* Alan Coopersmith <alan.coopersmith@oracle.com>, 2025-12-10 15:18:
>https://github.com/gogs/gogs offers a MIT-licensed self-hosted git 
>service.

Gogs has a couple of notable forks: Gitea, Forgejo.
Does anyone know if they are affected?

-- 
Jakub Wilk
