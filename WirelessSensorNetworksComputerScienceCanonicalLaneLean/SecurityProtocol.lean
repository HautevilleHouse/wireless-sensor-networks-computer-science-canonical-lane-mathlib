import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WirelessSensorNetworksComputerScienceCanonicalLaneLean

structure CryptoPrimitive where
  keySize : ℕ
  blockSize : ℕ
  securityLevel : Prop
  securityLevelTerm : securityLevel

structure SecurityProtocolPackage where
  encryptionPrimitive : CryptoPrimitive
  authenticationPrimitive : CryptoPrimitive
  keyDistributionSecure : Prop
  messageIntegrity : Prop
  keyDistributionSecureTerm : keyDistributionSecure
  messageIntegrityTerm : messageIntegrity

def SecurityProtocolClosed (S : SecurityProtocolPackage) : Prop :=
  S.keyDistributionSecure ∧ S.messageIntegrity

theorem security_protocol_closed_from_evidence (S : SecurityProtocolPackage) : SecurityProtocolClosed S :=
  And.intro S.keyDistributionSecureTerm S.messageIntegrityTerm

end WirelessSensorNetworksComputerScienceCanonicalLaneLean
end HautevilleHouse