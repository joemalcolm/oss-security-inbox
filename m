Received: (qmail 7722 invoked by uid 550); 6 Nov 2023 22:56:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1239 invoked from network); 6 Nov 2023 22:25:50 -0000
Message-ID: <9893eb17-906c-4bc1-8e13-a3d46fa43954@brondsema.net>
Date: Mon, 6 Nov 2023 17:25:37 -0500
MIME-Version: 1.0
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Dave Brondsema <dave@brondsema.net>
Autocrypt: addr=dave@brondsema.net; keydata=
 xsDiBD56h8wRBADxnJ7DHRZMhPxuBbJCWVnk1fE/mzxPDN8nwVHw8rq7v5PIY5CpXlPyaLKn
 Y+Ohdij+2xfcjNNC9BAc065na9haFsPG0bw8oMWn69dbB3gXVmZsXYHHd2l0HZ0IVkWB2Fo3
 MU3/DNlhGoPZbuScwJMKRgYce05gosoFj2lsCfjbcwCg3bdizUs5OeZtXoD/EUOstWMLtDcD
 /0xMFNLkw4LdggBNydntzBWGiun2uAtXN7MzwrCXnTIbJDjfp0ZTxt99uzIzMu9Nd03Lr9qK
 +1ujQFOTzkDVbFbtpzevFpWbsp2CkqCUOd9iShnekUuAw0z9JhN+77JngCuXLCiIDq0mEJ5Z
 gxIZZM700SpzU2jmb3m51eOlHfrKBADvxTXxWPFwavr6NWfpNn/pnvgkpHtHhy711yWoT28q
 p5k5TWltfVyUqGI7BlsNDyUEbNo+U2OsxkZ9gwvNuRgaw4y65xR1/HVWhroNCzSO093x3vTC
 I9n/dELd2uRrI+VBPTJzMiCk1A+Ppjo+Zy6/G63O5vbHiFsMx3WF+OCKYM0jRGF2ZSBCcm9u
 ZHNlbWEgPGRhdmVAYnJvbmRzZW1hLm5ldD7CXAQTEQIAHAQLBwMCAxUCAwMWAgECHgECF4AF
 Aj+4Ai4CGQEACgkQVvBSb5uzznCjvQCfXtqZpjHgi8Qv1mQZI7Y/qijl8asAn2YhUSgb3/xf
 WrotXCewWQmZ+2hNzsFNBD56iEgQCADj/7YfrcqpgO/d76J/wrdYh18MtPVIdYKrMYih9tvy
 GqV/G2Ce6jlz7KCqKe6GIvpBY5UDX8zLf6SDrjUrHKMvg4lBzRSaHKJ929pDiyLTaku5IepM
 UtAZxpPui/ci+8otXuFucj2jAh7xUec65rdUUGS505RQcP18Zr2FbhxF0mqD/CcbnpIDVNDQ
 LGebcuWb9Trhelmues3NYwTxHfGnRUg3whkaWC+XW2sZylB9FEM5wsWWtsCo4xDwv+P0gi3n
 RKVhV2OU9Vl0o8HwBCYc4w3Wlrg1QuaC6oDhVDS0WamXOhrc5wZmUAw+Avd0guVPkfpvRpjy
 U5TIWnGpigznAAMFB/9ndwJSLyYShQIgLG2z9bMOPqf0tvIMFTLjA7N0kJdOuZRkVdJrIswM
 mc+gdZFvnnKLLJVmzb4i8LskRPA8TX7Hp/ZX10xin+Oe0R2pG6JAXWov+p/PXSD2cUP/9t5d
 VMoKzUcvmqvW0h6tjubmrXJz0oG2Gfnye84MUNkroFVNq9vFPnpmgEM78suC6IMdO/nElyJP
 1s8UXTkn9qsywjnbTIpF9uKCovkwkUzWETPMoiYBZu2ceG20UpZoqJxUSkwwT6ZZ3Z213PTA
 6jJ9BS4qApcqS/q2ghe6Y0OB+bXYxTfYITsg+hb0eV4GOCOEanpfoUDFlI0xlDWIj+5DtLpJ
 wkYEGBECAAYFAj56iEgACgkQVvBSb5uzznAThgCg0v8Qek9088O/pe3n+oY6gEvPAdoAnjn1
 g5/sZ8UFenW7N4G+tv72zPbV
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2023-46851: Apache Allura: sensitive information exposure via
 import

Severity: critical

Affected versions:

- Apache Allura 1.0.1 through 1.15.0

Description:

Allura Discussion and Allura Forum importing does not restrict URL values 
specified in attachments. Project administrators can run these imports, which 
could cause Allura to read local files and expose them.  Exposing internal files 
then can lead to other exploits, like session hijacking, or remote code execution.

This issue affects Apache Allura from 1.0.1 through 1.15.0.

Users are recommended to upgrade to version 1.16.0, which fixes the issue.  If 
you are unable to upgrade, set "disable_entry_points.allura.importers = 
forge-tracker, forge-discussion" in your .ini config file.

Credit:

Stefan Schiller (Sonar) (finder)

References:

https://allura.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-46851

