<# 
Demo : #Script Signing
#>

New-SelfSignedCertificate -CertStoreLocation cert:\currentuser\my `
-Subject "CN=Local Code Signing" `
-KeyAlgorithm RSA `
-KeyLength 2048 `
-Provider "Microsoft Enhanced RSA and AES Cryptographic Provider" `
-KeyExportPolicy Exportable `
-KeyUsage DigitalSignature `
-Type CodeSigningCert

$cert = @(Get-ChildItem cert:\CurrentUser\My -CodeSigning)[0]


Set-AuthenticodeSignature C:\Temp\scope.ps1 $cert
