-- Identify the most common industries that use the motion design software:
SELECT Industry, COUNT(*) AS IndustryCount
FROM `lottie-labs-382216.users.onboarding_calls`
GROUP BY Industry
ORDER BY IndustryCount DESC

-- Analyze the customer awareness channel:
SELECT CustomerAwarenessChannel, COUNT(*) AS ChannelCount
FROM `lottie-labs-382216.users.onboarding_calls`
GROUP BY CustomerAwarenessChannel
ORDER BY ChannelCount DESC

-- Identify the most common platforms that users export their designs to:
SELECT PlatformsExportedTo, COUNT(*) AS Count
FROM `lottie-labs-382216.users.onboarding_calls`
GROUP BY PlatformsExportedTo
ORDER BY Count DESC

--Analyze user conclusions and beta feedback:
SELECT UserConclusion, BetaFeedback, COUNT(*) AS Count
FROM `lottie-labs-382216.users.onboarding_calls`
WHERE UserConclusion = 'Positive'
GROUP BY UserConclusion, BetaFeedback
ORDER BY Count DESC

-- Identify the most common design software used by customers:
SELECT DesignSoftware, COUNT(*) AS Count
FROM `lottie-labs-382216.users.onboarding_calls`
GROUP BY DesignSoftware
ORDER BY Count DESC

-- Identify the most common motion software currently being used by customers:
SELECT CurrentMotionSoftware, COUNT(*) AS Count
FROM `lottie-labs-382216.users.onboarding_calls`
GROUP BY CurrentMotionSoftware
ORDER BY Count DESC

-- Analyze the platforms that customers are exporting their designs to:
SELECT PlatformsExportedTo, COUNT(*) AS Count
FROM `lottie-labs-382216.users.onboarding_calls`
GROUP BY PlatformsExportedTo
ORDER BY Count DESC

-- Analyze dashboard comments:
SELECT DashboardComments, COUNT(*) AS Count
FROM `lottie-labs-382216.users.onboarding_calls`
GROUP BY DashboardComments
ORDER BY Count DESC

-- Analyze onCall feedback:
SELECT UserConclusion, OnCallFeedback, COUNT(*) AS Count
FROM `lottie-labs-382216.users.onboarding_calls`
WHERE UserConclusion = 'Positive'
GROUP BY OnCallFeedback, UserConclusion
ORDER BY Count DESC


-- Analyze user feedback from dashboard comments, on-call feedback, and beta feedback:
SELECT DashboardComments, OnCallFeedback, BetaFeedback, COUNT(*) AS Count
FROM `lottie-labs-382216.users.onboarding_calls`
GROUP BY DashboardComments, OnCallFeedback, BetaFeedback
ORDER BY Count DESC

-- Analyze lottie handoff considetations
SELECT LottieHandoffConsiderations, COUNT(*) as TotalUsers
FROM `lottie-labs-382216.users.onboarding_calls`
WHERE LottieHandoffConsiderations IS NOT NULL
GROUP BY LottieHandoffConsiderations
ORDER BY TotalUsers DESC

-- Analyze correlation between BetaReadinessScore and UserConclusion
SELECT BetaReadinessScore, UserConclusion, COUNT(*) as TotalUsers
FROM `lottie-labs-382216.users.onboarding_calls`
WHERE
  BetaReadinessScore IS NOT NULL OR
  UserConclusion IS NOT NULL
GROUP BY BetaReadinessScore, UserConclusion
ORDER BY TotalUsers DESC