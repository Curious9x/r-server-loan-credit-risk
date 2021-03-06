USE [Loans_R]
GO
/****** Object:  Table [dbo].[Bins]    Script Date: 1/26/2018 7:46:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bins](
	[id] [varchar](200) NOT NULL,
	[value] [varbinary](max) NULL,
 CONSTRAINT [unique_id] UNIQUE NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Borrower]    Script Date: 1/26/2018 7:46:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Borrower](
	[memberId] [int] NULL,
	[residentialState] [nvarchar](255) NULL,
	[yearsEmployment] [nvarchar](255) NULL,
	[homeOwnership] [nvarchar](255) NULL,
	[annualIncome] [float] NULL,
	[incomeVerified] [nvarchar](255) NULL,
	[dtiRatio] [float] NULL,
	[lengthCreditHistory] [int] NULL,
	[numTotalCreditLines] [int] NULL,
	[numOpenCreditLines] [int] NULL,
	[numOpenCreditLines1Year] [int] NULL,
	[revolvingBalance] [float] NULL,
	[revolvingUtilizationRate] [float] NULL,
	[numDerogatoryRec] [int] NULL,
	[numDelinquency2Years] [int] NULL,
	[numChargeoff1year] [int] NULL,
	[numInquiries6Mon] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Borrower_Prod]    Script Date: 1/26/2018 7:46:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Borrower_Prod](
	[memberId] [int] NULL,
	[residentialState] [nvarchar](255) NULL,
	[yearsEmployment] [nvarchar](255) NULL,
	[homeOwnership] [nvarchar](255) NULL,
	[annualIncome] [float] NULL,
	[incomeVerified] [nvarchar](255) NULL,
	[dtiRatio] [float] NULL,
	[lengthCreditHistory] [int] NULL,
	[numTotalCreditLines] [int] NULL,
	[numOpenCreditLines] [int] NULL,
	[numOpenCreditLines1Year] [int] NULL,
	[revolvingBalance] [float] NULL,
	[revolvingUtilizationRate] [float] NULL,
	[numDerogatoryRec] [int] NULL,
	[numDelinquency2Years] [int] NULL,
	[numChargeoff1year] [int] NULL,
	[numInquiries6Mon] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Column_Info]    Script Date: 1/26/2018 7:46:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Column_Info](
	[id] [varchar](200) NOT NULL,
	[value] [varbinary](max) NULL,
 CONSTRAINT [unique_id2] UNIQUE NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hash_Id]    Script Date: 1/26/2018 7:46:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hash_Id](
	[loanId] [int] NOT NULL,
	[hashCode] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[loanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loan]    Script Date: 1/26/2018 7:46:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loan](
	[loanId] [int] NULL,
	[memberId] [int] NULL,
	[date] [nvarchar](255) NULL,
	[purpose] [nvarchar](255) NULL,
	[isJointApplication] [nvarchar](255) NULL,
	[loanAmount] [float] NULL,
	[term] [nvarchar](255) NULL,
	[interestRate] [float] NULL,
	[monthlyPayment] [float] NULL,
	[grade] [nvarchar](255) NULL,
	[loanStatus] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loan_Prod]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loan_Prod](
	[loanId] [int] NULL,
	[memberId] [int] NULL,
	[date] [nvarchar](255) NULL,
	[purpose] [nvarchar](255) NULL,
	[isJointApplication] [nvarchar](255) NULL,
	[loanAmount] [float] NULL,
	[term] [nvarchar](255) NULL,
	[interestRate] [float] NULL,
	[monthlyPayment] [float] NULL,
	[grade] [nvarchar](255) NULL,
	[loanStatus] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logistic_Coeff]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logistic_Coeff](
	[variable] [nvarchar](256) NULL,
	[coefficient] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Merged]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Merged](
	[loanId] [int] NULL,
	[date] [nvarchar](255) NULL,
	[purpose] [nvarchar](255) NULL,
	[isJointApplication] [nvarchar](255) NULL,
	[loanAmount] [float] NULL,
	[term] [nvarchar](255) NULL,
	[interestRate] [float] NULL,
	[monthlyPayment] [float] NULL,
	[grade] [nvarchar](255) NULL,
	[loanStatus] [nvarchar](255) NULL,
	[memberId] [int] NULL,
	[residentialState] [nvarchar](255) NULL,
	[yearsEmployment] [nvarchar](255) NULL,
	[homeOwnership] [nvarchar](255) NULL,
	[annualIncome] [float] NULL,
	[incomeVerified] [nvarchar](255) NULL,
	[dtiRatio] [float] NULL,
	[lengthCreditHistory] [int] NULL,
	[numTotalCreditLines] [int] NULL,
	[numOpenCreditLines] [int] NULL,
	[numOpenCreditLines1Year] [int] NULL,
	[revolvingBalance] [float] NULL,
	[revolvingUtilizationRate] [float] NULL,
	[numDerogatoryRec] [int] NULL,
	[numDelinquency2Years] [int] NULL,
	[numChargeoff1year] [int] NULL,
	[numInquiries6Mon] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Merged_Cleaned]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Merged_Cleaned](
	[loanId] [int] NULL,
	[date] [nvarchar](255) NULL,
	[purpose] [nvarchar](255) NULL,
	[isJointApplication] [nvarchar](255) NULL,
	[loanAmount] [float] NULL,
	[term] [nvarchar](255) NULL,
	[interestRate] [float] NULL,
	[monthlyPayment] [float] NULL,
	[grade] [nvarchar](255) NULL,
	[loanStatus] [nvarchar](255) NULL,
	[memberId] [int] NULL,
	[residentialState] [nvarchar](255) NULL,
	[yearsEmployment] [nvarchar](255) NULL,
	[homeOwnership] [nvarchar](255) NULL,
	[annualIncome] [float] NULL,
	[incomeVerified] [nvarchar](255) NULL,
	[dtiRatio] [float] NULL,
	[lengthCreditHistory] [int] NULL,
	[numTotalCreditLines] [int] NULL,
	[numOpenCreditLines] [int] NULL,
	[numOpenCreditLines1Year] [int] NULL,
	[revolvingBalance] [float] NULL,
	[revolvingUtilizationRate] [float] NULL,
	[numDerogatoryRec] [int] NULL,
	[numDelinquency2Years] [int] NULL,
	[numChargeoff1year] [int] NULL,
	[numInquiries6Mon] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Merged_Cleaned_Prod]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Merged_Cleaned_Prod](
	[loanId] [int] NULL,
	[date] [nvarchar](255) NULL,
	[purpose] [nvarchar](255) NULL,
	[isJointApplication] [nvarchar](255) NULL,
	[loanAmount] [float] NULL,
	[term] [nvarchar](255) NULL,
	[interestRate] [float] NULL,
	[monthlyPayment] [float] NULL,
	[grade] [nvarchar](255) NULL,
	[loanStatus] [nvarchar](255) NULL,
	[memberId] [int] NULL,
	[residentialState] [nvarchar](255) NULL,
	[yearsEmployment] [nvarchar](255) NULL,
	[homeOwnership] [nvarchar](255) NULL,
	[annualIncome] [float] NULL,
	[incomeVerified] [nvarchar](255) NULL,
	[dtiRatio] [float] NULL,
	[lengthCreditHistory] [int] NULL,
	[numTotalCreditLines] [int] NULL,
	[numOpenCreditLines] [int] NULL,
	[numOpenCreditLines1Year] [int] NULL,
	[revolvingBalance] [float] NULL,
	[revolvingUtilizationRate] [float] NULL,
	[numDerogatoryRec] [int] NULL,
	[numDelinquency2Years] [int] NULL,
	[numChargeoff1year] [int] NULL,
	[numInquiries6Mon] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Merged_Features]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Merged_Features](
	[loanId] [int] NOT NULL,
	[date] [nvarchar](255) NULL,
	[purpose] [nvarchar](255) NULL,
	[isJointApplication] [nvarchar](255) NULL,
	[loanAmount] [float] NULL,
	[term] [nvarchar](255) NULL,
	[interestRate] [float] NULL,
	[monthlyPayment] [float] NULL,
	[grade] [nvarchar](255) NULL,
	[loanStatus] [nvarchar](255) NULL,
	[memberId] [int] NULL,
	[residentialState] [nvarchar](255) NULL,
	[yearsEmployment] [nvarchar](255) NULL,
	[homeOwnership] [nvarchar](255) NULL,
	[annualIncome] [float] NULL,
	[incomeVerified] [nvarchar](255) NULL,
	[dtiRatio] [float] NULL,
	[lengthCreditHistory] [int] NULL,
	[numTotalCreditLines] [int] NULL,
	[numOpenCreditLines] [int] NULL,
	[numOpenCreditLines1Year] [int] NULL,
	[revolvingBalance] [float] NULL,
	[revolvingUtilizationRate] [float] NULL,
	[numDerogatoryRec] [int] NULL,
	[numDelinquency2Years] [int] NULL,
	[numChargeoff1year] [int] NULL,
	[numInquiries6Mon] [int] NULL,
	[isBad] [nvarchar](255) NULL,
	[loanAmountBucket] [nvarchar](255) NULL,
	[interestRateBucket] [nvarchar](255) NULL,
	[monthlyPaymentBucket] [nvarchar](255) NULL,
	[annualIncomeBucket] [nvarchar](255) NULL,
	[dtiRatioBucket] [nvarchar](255) NULL,
	[lengthCreditHistoryBucket] [nvarchar](255) NULL,
	[numTotalCreditLinesBucket] [nvarchar](255) NULL,
	[numOpenCreditLinesBucket] [nvarchar](255) NULL,
	[numOpenCreditLines1YearBucket] [nvarchar](255) NULL,
	[revolvingBalanceBucket] [nvarchar](255) NULL,
	[revolvingUtilizationRateBucket] [nvarchar](255) NULL,
	[numDerogatoryRecBucket] [nvarchar](255) NULL,
	[numDelinquency2YearsBucket] [nvarchar](255) NULL,
	[numChargeoff1yearBucket] [nvarchar](255) NULL,
	[numInquiries6MonBucket] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Merged_Features_Prod]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Merged_Features_Prod](
	[loanId] [int] NOT NULL,
	[date] [nvarchar](255) NULL,
	[purpose] [nvarchar](255) NULL,
	[isJointApplication] [nvarchar](255) NULL,
	[loanAmount] [float] NULL,
	[term] [nvarchar](255) NULL,
	[interestRate] [float] NULL,
	[monthlyPayment] [float] NULL,
	[grade] [nvarchar](255) NULL,
	[loanStatus] [nvarchar](536) NULL,
	[memberId] [int] NULL,
	[residentialState] [nvarchar](255) NULL,
	[yearsEmployment] [nvarchar](255) NULL,
	[homeOwnership] [nvarchar](255) NULL,
	[annualIncome] [float] NULL,
	[incomeVerified] [nvarchar](255) NULL,
	[dtiRatio] [float] NULL,
	[lengthCreditHistory] [int] NULL,
	[numTotalCreditLines] [int] NULL,
	[numOpenCreditLines] [int] NULL,
	[numOpenCreditLines1Year] [int] NULL,
	[revolvingBalance] [float] NULL,
	[revolvingUtilizationRate] [float] NULL,
	[numDerogatoryRec] [int] NULL,
	[numDelinquency2Years] [int] NULL,
	[numChargeoff1year] [int] NULL,
	[numInquiries6Mon] [int] NULL,
	[isBad] [nvarchar](255) NULL,
	[loanAmountBucket] [nvarchar](255) NULL,
	[interestRateBucket] [nvarchar](255) NULL,
	[monthlyPaymentBucket] [nvarchar](255) NULL,
	[annualIncomeBucket] [nvarchar](255) NULL,
	[dtiRatioBucket] [nvarchar](255) NULL,
	[lengthCreditHistoryBucket] [nvarchar](255) NULL,
	[numTotalCreditLinesBucket] [nvarchar](255) NULL,
	[numOpenCreditLinesBucket] [nvarchar](255) NULL,
	[numOpenCreditLines1YearBucket] [nvarchar](255) NULL,
	[revolvingBalanceBucket] [nvarchar](255) NULL,
	[revolvingUtilizationRateBucket] [nvarchar](255) NULL,
	[numDerogatoryRecBucket] [nvarchar](255) NULL,
	[numDelinquency2YearsBucket] [nvarchar](255) NULL,
	[numChargeoff1yearBucket] [nvarchar](255) NULL,
	[numInquiries6MonBucket] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Merged_Labeled]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Merged_Labeled](
	[loanId] [int] NULL,
	[date] [nvarchar](255) NULL,
	[purpose] [nvarchar](255) NULL,
	[isJointApplication] [nvarchar](255) NULL,
	[loanAmount] [float] NULL,
	[term] [nvarchar](255) NULL,
	[interestRate] [float] NULL,
	[monthlyPayment] [float] NULL,
	[grade] [nvarchar](255) NULL,
	[loanStatus] [nvarchar](255) NULL,
	[memberId] [int] NULL,
	[residentialState] [nvarchar](255) NULL,
	[yearsEmployment] [nvarchar](255) NULL,
	[homeOwnership] [nvarchar](255) NULL,
	[annualIncome] [float] NULL,
	[incomeVerified] [nvarchar](255) NULL,
	[dtiRatio] [float] NULL,
	[lengthCreditHistory] [int] NULL,
	[numTotalCreditLines] [int] NULL,
	[numOpenCreditLines] [float] NULL,
	[numOpenCreditLines1Year] [int] NULL,
	[revolvingBalance] [float] NULL,
	[revolvingUtilizationRate] [float] NULL,
	[numDerogatoryRec] [int] NULL,
	[numDelinquency2Years] [int] NULL,
	[numChargeoff1year] [int] NULL,
	[numInquiries6Mon] [int] NULL,
	[isBad] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Merged_Prod]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Merged_Prod](
	[loanId] [int] NULL,
	[date] [nvarchar](255) NULL,
	[purpose] [nvarchar](255) NULL,
	[isJointApplication] [nvarchar](255) NULL,
	[loanAmount] [float] NULL,
	[term] [nvarchar](255) NULL,
	[interestRate] [float] NULL,
	[monthlyPayment] [float] NULL,
	[grade] [nvarchar](255) NULL,
	[loanStatus] [nvarchar](255) NULL,
	[memberId] [int] NULL,
	[residentialState] [nvarchar](255) NULL,
	[yearsEmployment] [nvarchar](255) NULL,
	[homeOwnership] [nvarchar](255) NULL,
	[annualIncome] [float] NULL,
	[incomeVerified] [nvarchar](255) NULL,
	[dtiRatio] [float] NULL,
	[lengthCreditHistory] [int] NULL,
	[numTotalCreditLines] [int] NULL,
	[numOpenCreditLines] [int] NULL,
	[numOpenCreditLines1Year] [int] NULL,
	[revolvingBalance] [float] NULL,
	[revolvingUtilizationRate] [float] NULL,
	[numDerogatoryRec] [int] NULL,
	[numDelinquency2Years] [int] NULL,
	[numChargeoff1year] [int] NULL,
	[numInquiries6Mon] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Metrics]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Metrics](
	[modelName] [varchar](30) NOT NULL,
	[accuracy] [float] NULL,
	[precision] [float] NULL,
	[recall] [float] NULL,
	[F-score] [float] NULL,
	[AUC] [float] NULL,
	[KS] [float] NULL,
	[scoreThreshold] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Model]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Model](
	[id] [varchar](200) NOT NULL,
	[value] [varbinary](max) NULL,
 CONSTRAINT [unique_id3] UNIQUE NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Operational_Metrics]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operational_Metrics](
	[scorePercentile] [nvarchar](255) NULL,
	[scoreCutoff] [float] NULL,
	[badRate] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Predictions_Logistic]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Predictions_Logistic](
	[isBad_Pred] [float] NULL,
	[isBad] [nvarchar](255) NULL,
	[loanId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Predictions_Logistic_Prod]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Predictions_Logistic_Prod](
	[isBad_Pred] [float] NULL,
	[isBad] [nvarchar](255) NULL,
	[loanId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Scores]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scores](
	[loanId] [int] NULL,
	[transformedScore] [float] NULL,
	[scorePercentile] [nvarchar](255) NULL,
	[scoreCutoff] [float] NULL,
	[badRate] [float] NULL,
	[isBad] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Scores_Average]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scores_Average](
	[avg] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Scores_Prod]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scores_Prod](
	[loanId] [int] NULL,
	[transformedScore] [float] NULL,
	[scorePercentile] [nvarchar](255) NULL,
	[scoreCutoff] [float] NULL,
	[badRate] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stats]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stats](
	[variableName] [varchar](30) NOT NULL,
	[type] [varchar](30) NOT NULL,
	[mode] [varchar](30) NULL,
	[mean] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[apply_score_transformation]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[apply_score_transformation] @predictions_table varchar(max), @output varchar(max)

AS 
BEGIN

   	-- Input will be read in-memory. 
	 DECLARE @inquery nvarchar(max)
     SET @inquery =  'SELECT * FROM ' + @predictions_table;

	--	Get the average score and the score bins used in the Development pipeline, and the current database name.
	DECLARE @avg float = (select * from [dbo].[Scores_Average]);
	DECLARE @database_name varchar(max) = db_name();

    EXECUTE sp_execute_external_script @language = N'R',
	                                   @input_data_1 = @inquery,
									   @script = N' 

##########################################################################################################################################
##	Define the connection string
##########################################################################################################################################
  connection_string <- paste("Driver=SQL Server;Server=localhost;Database=", database_name, ";Trusted_Connection=true;", sep="")

 ## Change the names of the variables in the predictions table if you used rxLogisticRegression.
 ## InputDataSet <- InputDataSet[, c(1, 2, 5)]
 ## colnames(InputDataSet) <- c("isBad", "loanId", "isBad_Pred")

##########################################################################################################################################
##	Space out the scores (predicted probability of default) for interpretability with a sigmoid. 
##########################################################################################################################################
# Import the average value used in the Modeling pipeline sigmoid. 
  Avg_sql <- RxSqlServerData(sqlQuery = "SELECT * FROM [dbo].[Scores_Average]",
                             connectionString = connection_string)
  avg <- rxImport(Avg_sql)[1,1]


# Define and apply the sigmoid: it is centered at  1.2* the mean score used in the Development pipeline to ensure a good spread of scores. 
  sigmoid <- function(x){
    return(1/(1 + exp(-20*(x-1.2*avg))))
  }

  InputDataSet$transformedScore <- sigmoid(InputDataSet$isBad_Pred)
 
##########################################################################################################################################
##	Apply the score transformation. 
########################################################################################################################################## 
# Import the Bins used during the Development pipeline. 
  Operational_Metrics_sql <- RxSqlServerData(sqlQuery = "SELECT * FROM [dbo].[Operational_Metrics]",
                                            connectionString = connection_string)
  Operational_Metrics <- rxImport(Operational_Metrics_sql)

# Deal with the bottom 1-99 percentiles. 
  for (i in seq(1, (nrow(Operational_Metrics) - 1))){
    rows <- which(InputDataSet$transformedScore <= Operational_Metrics$scoreCutoff[i + 1] & 
                  InputDataSet$transformedScore > Operational_Metrics$scoreCutoff[i])
    InputDataSet[rows, c("scorePercentile")] <- as.character(Operational_Metrics$scorePercentile[i + 1])
    InputDataSet[rows, c("badRate")] <- Operational_Metrics$badRate[i]
    InputDataSet[rows, c("scoreCutoff")] <- Operational_Metrics$scoreCutoff[i]
  }
  
# Deal with the top 1% higher scores (last bucket). 
  rows <- which(InputDataSet$transformedScore > Operational_Metrics$scoreCutoff[100])
  InputDataSet[rows, c("scorePercentile")] <- "Top 1%"
  InputDataSet[rows, c("scoreCutoff")] <- Operational_Metrics$scoreCutoff[100]
  InputDataSet[rows, c("badRate")] <- Operational_Metrics$badRate[100]

##########################################################################################################################################
## Save the transformed scores to SQL. 
##########################################################################################################################################
  Scores_sql <- RxSqlServerData(table = output, connectionString = connection_string)
  rxDataStep(inData = InputDataSet[, c("loanId", "transformedScore", "scorePercentile", "scoreCutoff", "badRate", "isBad")], 
             outFile = Scores_sql, 
             overwrite = TRUE)  
'
, @params = N' @output varchar(max), @database_name varchar(max)'
, @output = @output
, @database_name = @database_name
;
END
GO
/****** Object:  StoredProcedure [dbo].[compute_bins]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[compute_bins] @inquery nvarchar(max) = N'SELECT Merged_Cleaned.*, isBad = CASE WHEN loanStatus IN (''Current'') THEN ''0'' ELSE ''1'' END
                                                           FROM  Merged_Cleaned JOIN Hash_Id 
														   ON Merged_Cleaned.loanId = Hash_Id.loanId
                                                           WHERE hashCode <= 70'
AS 
BEGIN

	-- Create an empty table to be filled with the serialized cutoffs. 
    DROP TABLE if exists  [dbo].[Bins]
	CREATE TABLE [dbo].[Bins](
		[id] [varchar](200) NOT NULL, 
	    [value] [varbinary](max), 
			CONSTRAINT unique_id UNIQUE(id)
		) 
		

	-- Get the database name.
	DECLARE @database_name varchar(max) = db_name();

	-- The input is the training set to which we append the label isBad (because the bins are computed through Conditional Inference Trees).
	-- Compute, define and serialize the bins. 
	EXECUTE sp_execute_external_script @language = N'R',
	                                   @input_data_1 = @inquery,
     					               @script = N' 

########################################################################################################################################## 
## Setting up
########################################################################################################################################## 
# Define the connection string
connection_string <- paste("Driver=SQL Server;Server=localhost;Database=", database_name, ";Trusted_Connection=true;", sep="")

# Set the type of the label to numeric. 
InputDataSet$isBad <- as.numeric(as.character(InputDataSet$isBad))

########################################################################################################################################## 
## Specify the default bins
########################################################################################################################################## 
# Names of the variables for which we are going to look for the bins with smbinning. 
smb_buckets_names <- c("loanAmount", "interestRate", "monthlyPayment", "annualIncome", "dtiRatio", "lengthCreditHistory",
                        "numTotalCreditLines", "numOpenCreditLines", "numOpenCreditLines1Year", "revolvingBalance",
                        "revolvingUtilizationRate", "numDerogatoryRec", "numDelinquency2Years", "numChargeoff1year", 
                        "numInquiries6Mon")
  
# Using the smbinning has some limitations, such as: 
# - The variable should have more than 10 unique values. 
# - If no significant splits are found, it does not output bins. 
# For this reason, we manually specify default bins based on an analysis of the variables distributions or smbinning on a larger data set. 
# We then overwrite them with smbinning when it output bins. 
  
bins <- list()
  
# Default cutoffs for bins:
## EXAMPLE: If the cutoffs are (c1, c2, c3),
## Bin 1 = ]- inf, c1], Bin 2 = ]c1, c2], Bin 3 = ]c2, c3], Bin 4 = ]c3, + inf] 
## c1 and c3 are NOT the minimum and maximum found in the training set. 
bins$loanAmount <- c(14953, 18951, 20852, 22122, 24709, 28004)
bins$interestRate <- c(7.17, 10.84, 12.86, 14.47, 15.75, 18.05)
bins$monthlyPayment <- c(382, 429, 495, 529, 580, 649, 708, 847)
bins$annualIncome <- c(49402, 50823, 52089, 52885, 53521, 54881, 55520, 57490)
bins$dtiRatio <- c(9.01, 13.42, 15.92, 18.50, 21.49, 22.82, 24.67)
bins$lengthCreditHistory <- c(8)
bins$numTotalCreditLines <- c(1, 2)
bins$numOpenCreditLines <- c(3, 5)
bins$numOpenCreditLines1Year <- c(3, 4, 5, 6, 7, 9)
bins$revolvingBalance <- c(11912, 12645, 13799, 14345, 14785, 15360, 15883, 16361, 17374, 18877)
bins$revolvingUtilizationRate <- c(49.88, 60.01, 74.25, 81.96)
bins$numDerogatoryRec <- c(0, 1)
bins$numDelinquency2Years <- c(0)
bins$numChargeoff1year <- c(0)
bins$numInquiries6Mon <- c(0)
  
########################################################################################################################################## 
## Compute bins with smbinning
########################################################################################################################################## 
# Function to compute smbinning on every variable. 
compute_bins <- function(name, data){
  library(smbinning)
  output <- smbinning(data, y = "isBad", x = name, p = 0.05)
  if (class(output) == "list"){ # case where the binning was performed and returned bins.
     cuts <- output$cuts  
     return (cuts)
   }
}
  
# We apply it in parallel accross cores with rxExec and the compute context set to Local Parallel.
## 3 cores will be used here so the code can run on servers with smaller RAM. 
## You can increase numCoresToUse below in order to speed up the execution if using a larger server.
## numCoresToUse = -1 will enable the use of the maximum number of cores.
rxOptions(numCoresToUse = 3) # use 3 cores.
rxSetComputeContext("localpar")
q <- rxExec(compute_bins, name = rxElemArg(smb_buckets_names), data = InputDataSet)
names(q) <- smb_buckets_names
  
# Fill bins with bins obtained in q with smbinning. 
## We replace the default values in bins if and only if: 
## - smbinning returned a non NULL result. 
## - there is no repetition in the bins provided by smbinning. 
for(name in smb_buckets_names){
  if (!is.null(q[[name]]) & (length(unique(q[[name]])) == length(q[[name]]))){ 
    bins[[name]] <- q[[name]]
  }
}

########################################################################################################################################## 
## Save the bins in SQL Server 
########################################################################################################################################## 
# Open an Odbc connection with SQL Server. 
OdbcModel <- RxOdbcData(table = "Bins", connectionString = connection_string) 
rxOpen(OdbcModel, "w") 

# Write the model to SQL.  
rxWriteObject(OdbcModel, "Bin Info", bins) 
 
'
, @params = N'@database_name varchar(max)'
, @database_name = @database_name 
;
END
GO
/****** Object:  StoredProcedure [dbo].[compute_operational_metrics]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[compute_operational_metrics] @predictions_table varchar(max)

AS 
BEGIN

   	-- Input will be read in-memory. 
	 DECLARE @inquery nvarchar(max)
     SET @inquery =  'SELECT * FROM ' + @predictions_table;

	-- Get the database name. 
	 DECLARE @database_name varchar(max) = db_name();

     EXECUTE sp_execute_external_script @language = N'R',
	                                    @input_data_1 = @inquery,
									    @script = N' 

##########################################################################################################################################
##	Define the connection string
##########################################################################################################################################
   connection_string <- paste("Driver=SQL Server;Server=localhost;Database=", database_name, ";Trusted_Connection=true;", sep="")

 ## Change the names of the variables in the predictions table if you used rxLogisticRegression.
 ## InputDataSet <- InputDataSet[, c(1, 2, 5)]
 ## colnames(InputDataSet) <- c("isBad", "loanId", "isBad_Pred")

##########################################################################################################################################
##	Space out the scores (predicted probability of default) for interpretability with a sigmoid.
##########################################################################################################################################
# Define and apply the sigmoid: it is centered at 1.2*mean score to ensure a good spread of scores. 
  avg <- mean(InputDataSet$isBad_Pred)
  sigmoid <- function(x){
    return(1/(1 + exp(-20*(x-1.2*avg))))
  }

  InputDataSet$transformedScore <- sigmoid(InputDataSet$isBad_Pred)

# Save the Average used for the sigmoid function to a SQL table, so it can be used in the Production pipeline. 
  Scores_Average <- data.frame(avg, row.names = NULL)
  Scores_Average_sql <- RxSqlServerData(table = "Scores_Average", connectionString = connection_string)
  rxDataStep(inData = Scores_Average, outFile = Scores_Average_sql, overwrite = TRUE)

##########################################################################################################################################
##	Get the expected rates of bad loans for every bin taken as a threshold. 
########################################################################################################################################## 
# Convert isBad to numeric. 
  InputDataSet$isBad <- as.numeric(as.character(InputDataSet$isBad))

# Bin the scores based on quantiles. 
  bins <- rxQuantile("transformedScore", InputDataSet, probs = c(seq(0, 0.99, 0.01)))
  bins[["0%"]] <- 0 
  
# We consider 100 decision thresholds: the lower bound of each bin.
# Compute the expected rates of bad loans for loans with scores higher than each decision threshold. 
  badrate <- rep(0, length(bins))
  for(i in 1:length(bins))
  {
    selected <- InputDataSet$isBad[InputDataSet$transformedScore >= bins[i]]
    badrate[i] <- sum(selected)/length(selected) 
  }
  
# Save the percentiles, score cutoffs and bad rates in a SQL table.  
  Operational_Metrics <- data.frame(scorePercentile = names(bins), scoreCutoff = bins, badRate = badrate, row.names = NULL)
  Operational_Metrics_sql <- RxSqlServerData(table = "Operational_Metrics", connectionString = connection_string)
  rxDataStep(inData = Operational_Metrics, outFile = Operational_Metrics_sql, overwrite = TRUE)
'
, @params = N' @database_name varchar(max)'
, @database_name = @database_name
;
END
GO
/****** Object:  StoredProcedure [dbo].[compute_stats]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[compute_stats]  @input varchar(max) = 'Merged'
AS
BEGIN

	-- Create an empty table that will store the Statistics. 
	DROP TABLE if exists [dbo].[Stats]
	CREATE TABLE [dbo].[Stats](
		[variableName] [varchar](30) NOT NULL,
		[type] [varchar](30) NOT NULL,
		[mode] [varchar](30) NULL, 
		[mean] [float] NULL
	)

	-- Get the names and variable types of the columns to analyze.
		DECLARE @sql nvarchar(max);
		SELECT @sql = N'
		INSERT INTO Stats(variableName, type)
        SELECT COLUMN_NAME as variableName, DATA_TYPE as type
	    FROM INFORMATION_SCHEMA.COLUMNS
	    WHERE TABLE_NAME = ''' + @input + ''' 
        AND COLUMN_NAME NOT IN (''loanId'', ''memberId'', ''loanStatus'', ''date'')';
		EXEC sp_executesql @sql;

	-- Loops to compute the Mode for categorical variables.
		DECLARE @name1 NVARCHAR(100)
		DECLARE @getname1 CURSOR

		SET @getname1 = CURSOR FOR
		SELECT variableName FROM [dbo].[Stats] WHERE type IN('varchar', 'nvarchar', 'int', 'char')
	
		OPEN @getname1
		FETCH NEXT
		FROM @getname1 INTO @name1
		WHILE @@FETCH_STATUS = 0
		BEGIN	

			DECLARE @sql1 nvarchar(max);
			SELECT @sql1 = N'
			UPDATE Stats
			SET Stats.mode = T.mode
			FROM (SELECT TOP(1) ' + @name1 + ' as mode, count(*) as cnt
						 FROM ' + @input + ' 
						 GROUP BY ' + @name1 + ' 
						 ORDER BY cnt desc) as T
			WHERE Stats.variableName =  ''' + @name1 + '''';
			EXEC sp_executesql @sql1;

			FETCH NEXT
		    FROM @getname1 INTO @name1
		END
		CLOSE @getname1
		DEALLOCATE @getname1
		
	-- Loops to compute the Mean for continuous variables.
		DECLARE @name2 NVARCHAR(100)
		DECLARE @getname2 CURSOR

		SET @getname2 = CURSOR FOR
		SELECT variableName FROM [dbo].[Stats] WHERE type IN('float')
	
		OPEN @getname2
		FETCH NEXT
		FROM @getname2 INTO @name2
		WHILE @@FETCH_STATUS = 0
		BEGIN	

			DECLARE @sql2 nvarchar(max);
			SELECT @sql2 = N'
			UPDATE Stats
			SET Stats.mean = T.mean
			FROM (SELECT  AVG(' + @name2 + ') as mean
				  FROM ' + @input + ') as T
			WHERE Stats.variableName =  ''' + @name2 + '''';
			EXEC sp_executesql @sql2;

			FETCH NEXT
		    FROM @getname2 INTO @name2
		END
		CLOSE @getname2
		DEALLOCATE @getname2

END
GO
/****** Object:  StoredProcedure [dbo].[copy_modeling_tables]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[copy_modeling_tables]  @dev_db varchar(max) = 'Loan'
AS
BEGIN
	-- Only copy deployment tables if the production and the deployment databases are different. 
	DECLARE @database_name varchar(max) = db_name() 
	IF(@database_name <> @dev_db )
	BEGIN 

		-- Copy the Stats table into the production database. 
		 DROP TABLE if exists  [dbo].[Stats]
		 DECLARE @sql1 nvarchar(max);
			SELECT @sql1 = N'
			SELECT *
			INTO [dbo].[Stats]
			FROM ['+ @dev_db + '].[dbo].[Stats]';
			EXEC sp_executesql @sql1;

		-- Copy the Models table into the production database. 
		 DROP TABLE if exists  [dbo].[Model]
		 DECLARE @sql2 nvarchar(max);
			SELECT @sql2 = N'
			SELECT *
			INTO [dbo].[Model]
			FROM ['+ @dev_db + '].[dbo].[Model]';
			EXEC sp_executesql @sql2;

		-- Copy the Bins table into the production database. 
		 DROP TABLE if exists  [dbo].[Bins]
		 DECLARE @sql3 nvarchar(max);
			SELECT @sql3 = N'
			SELECT *
			INTO [dbo].[Bins]
			FROM ['+ @dev_db + '].[dbo].[Bins]';
			EXEC sp_executesql @sql3;

		-- Copy the Column_Info table into the production database. 
		 DROP TABLE if exists  [dbo].[Column_Info]
		 DECLARE @sql4 nvarchar(max);
			SELECT @sql4 = N'
			SELECT *
			INTO [dbo].[Column_Info]
			FROM ['+ @dev_db + '].[dbo].[Column_Info]';
			EXEC sp_executesql @sql4;

		-- Copy the Scores_Average table into the production database. 
	     DROP TABLE if exists  [dbo].[Scores_Average]
		 DECLARE @sql5 nvarchar(max);
			SELECT @sql5 = N'
			SELECT *
			INTO [dbo].[Scores_Average]
			FROM ['+ @dev_db + '].[dbo].[Scores_Average]';
			EXEC sp_executesql @sql5;

		-- Copy the Operational_Metrics table into the production database. 
         DROP TABLE if exists  [dbo].[Operational_Metrics]
		 DECLARE @sql6 nvarchar(max);
			SELECT @sql6 = N'
			SELECT *
			INTO [dbo].[Operational_Metrics]
			FROM ['+ @dev_db + '].[dbo].[Operational_Metrics]';
			EXEC sp_executesql @sql6;
	END;
END
GO
/****** Object:  StoredProcedure [dbo].[evaluate]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[evaluate] @predictions_table varchar(max)

AS 
BEGIN
	-- Create an empty table to be filled with the Metrics.
    DROP TABLE if exists  [dbo].[Metrics]
	CREATE TABLE [dbo].[Metrics](
		[modelName] [varchar](30) NOT NULL,
		[accuracy] [float] NULL,
		[precision] [float] NULL,
		[recall] [float] NULL,
		[F-score] [float] NULL,
		[AUC] [float] NULL,
		[KS] [float] NULL, 
		[scoreThreshold] [float] NULL 
		)
		
	-- Input will be read in-memory. 
	 DECLARE @inquery nvarchar(max)
     SET @inquery =  'SELECT * FROM ' + @predictions_table;

	-- Evaluate the Logistic Regression. 
	INSERT INTO Metrics 
	EXECUTE sp_execute_external_script @language = N'R',
	                                   @input_data_1 = @inquery,
									   @script = N' 

##########################################################################################################################################
##	Convert isBad to numeric in the imported predictions data set for correct evaluation. 
##########################################################################################################################################
InputDataSet$isBad <- as.numeric(as.character(InputDataSet$isBad))

 ## Change the names of the variables in the predictions table if you used rxLogisticRegression.
 ## InputDataSet <- InputDataSet[, c(1, 2, 5)]
 ## colnames(InputDataSet) <- c("isBad", "loanId", "isBad_Pred")

##########################################################################################################################################
## Model evaluation metrics.
##########################################################################################################################################
evaluate_model <- function(Predictions_Table) {
      
    ## KS STATISTIC.
    # Split the data according to the observed value and get the cumulative distribution of predicted probabilities. 
    Predictions0 <- Predictions_Table[Predictions_Table$isBad == 0,]$isBad_Pred
    Predictions1 <- Predictions_Table[Predictions_Table$isBad == 1,]$isBad_Pred
    
    cdf0 <- ecdf(Predictions0)
    cdf1 <- ecdf(Predictions1)
    
    # Compute the KS statistic. 
    ## Create a sequence of predicted probabilities in its range of values. 
    minMax <- seq(min(Predictions0, Predictions1), max(Predictions0, Predictions1), length.out=length(Predictions0)) 
    
    ## Compute KS, ie. the largest distance between the two cumulative distributions. 
    KS <- max(abs(cdf0(minMax) - cdf1(minMax))) 

	## Find one predicted probability where the cumulative distributions have the biggest difference.  
    x0 <- minMax[which(abs(cdf0(minMax) - cdf1(minMax)) == KS )] [1]
      
    ## CONFUSION MATRIX AND VARIOUS METRICS. 
  
    # The cumulative distributions of predicted probabilities given observed values are the farthest apart for a score equal to x0.
    # We can then use x0 as a decision threshold for example. 
    # Note that the choice of a decision threshold can be further optimized.

    # Using the x0 point as a threshold, we compute the binary predictions to get the confusion matrix. 
    Predictions_Table$isBad_Pred_Binary <- ifelse(Predictions_Table$isBad_Pred < x0, 0, 1)
    
    confusion <- table(Predictions_Table$isBad, Predictions_Table$isBad_Pred_Binary, dnn = c("Observed", "Predicted"))[c("0", "1"), c("0", "1")]
    print(confusion) 
    tp <- confusion[1, 1] 
    fn <- confusion[1, 2] 
    fp <- confusion[2, 1] 
    tn <- confusion[2, 2] 
    accuracy <- (tp + tn) / (tp + fn + fp + tn) 
    precision <- tp / (tp + fp) 
    recall <- tp / (tp + fn) 
    fscore <- 2 * (precision * recall) / (precision + recall) 
    
    ## AUC.
    ROC <- rxRoc(actualVarName = "isBad", predVarNames = "isBad_Pred", data = Predictions_Table, numBreaks = 1000)
    AUC <- rxAuc(ROC)
    
    metrics <- c("Logistic Regression", accuracy, precision, recall, fscore, AUC, KS, x0)
    return(metrics)
 }

##########################################################################################################################################
## Logistic Regression Evaluation 
##########################################################################################################################################
OutputDataSet <- data.frame(rbind(evaluate_model(Predictions_Table = InputDataSet)))					       
'
;
END
GO
/****** Object:  StoredProcedure [dbo].[feature_engineering]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[feature_engineering]  @input varchar(max), @output varchar(max)
AS
BEGIN 

	--	Get the current database name and the Bins information.
	DECLARE @database_name varchar(max) = db_name();

	-- Perform the feature engineering. 
	EXECUTE sp_execute_external_script @language = N'R',
     					               @script = N'
		
##########################################################################################################################################
##	Connection String
##########################################################################################################################################							   
# Define the connection string
connection_string <- paste("Driver=SQL Server;Server=localhost;Database=", database_name, ";Trusted_Connection=true;", sep="")

########################################################################################################################################## 
## Get the bins
########################################################################################################################################## 
# Create an Odbc connection with SQL Server using the name of the table storing the bins. 
OdbcModel <- RxOdbcData(table = "Bins", connectionString = connection_string) 

# Read the model from SQL.  
bins <- rxReadObject(OdbcModel, "Bin Info") 

##########################################################################################################################################
##	Feature Engineering
##########################################################################################################################################		
# Names of the variables to be bucketed. 
buckets_names <- c("loanAmount", "interestRate", "monthlyPayment", "annualIncome", "dtiRatio", "lengthCreditHistory",
                   "numTotalCreditLines", "numOpenCreditLines", "numOpenCreditLines1Year", "revolvingBalance",
                   "revolvingUtilizationRate", "numDerogatoryRec", "numDelinquency2Years", "numChargeoff1year", 
                   "numInquiries6Mon")

# Function to bucketize numeric variables. It will be wrapped into rxDataStep. 
  Bucketize <- function(data) {
    data <- data.frame(data)
    for(name in  buckets_names2){
      # Deal with the last bin.
      name2 <- paste(name, "Bucket", sep = "")
      data[, name2] <- as.character(length(b[[name]]) + 1)
      # Deal with the first bin. 
      rows <- which(data[, name] <= b[[name]][[1]])
      data[rows, name2] <- "1"
      # Deal with the rest.
      if(length(b[[name]]) > 1){
        for(i in seq(1, (length(b[[name]]) - 1))){
          rows <- which(data[, name] <= b[[name]][[i + 1]] & data[, name] > b[[name]][[i]])
          data[rows, name2] <- as.character(i + 1)
         }
	  }
    }
    return(data)  
  }
  

# Perform feature engineering on the cleaned data set.
   
## Point to the cleaned data set. 
Merged_Cleaned_sql <- RxSqlServerData(table =  input, connectionString = connection_string)

## Point to the output data set. 
Merged_Features_sql <- RxSqlServerData(table =  output, connectionString = connection_string)
    
## Create buckets for various numeric variables with the function Bucketize. 
## We also create the target variable, is_bad, based on loan_status.
    
rxDataStep(inData = Merged_Cleaned_sql,
           outFile = Merged_Features_sql, 
           overwrite = TRUE, 
           transformFunc = Bucketize,
           transformObjects =  list(
             b = bins, buckets_names2 = buckets_names),
	       transforms = list(
             isBad = ifelse(loanStatus %in% c("Current"), "0", "1") 
            ))
 '
 , @params = N'@input varchar(max), @output varchar(max), @database_name varchar(max)'
 , @input = @input
 , @output = @output 
 , @database_name = @database_name 

  -- Set loanId as the primary key. 
DECLARE @sql1 nvarchar(max);
SELECT @sql1 = N'
ALTER TABLE ' + @output + ' ALTER COLUMN [loanId] INTEGER NOT NULL'
EXEC sp_executesql @sql1


--DECLARE @sql2 nvarchar(max);
--SELECT @sql2 = N'
--ALTER TABLE ' + @output + ' ADD CONSTRAINT [PK_Features] PRIMARY KEY([loanId])'
--EXEC sp_executesql @sql2
;
END
GO
/****** Object:  StoredProcedure [dbo].[fill_NA_mode_mean]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[fill_NA_mode_mean]  @input varchar(max), @output varchar(max)
AS
BEGIN

    -- Drop the output table if it exists.
    DECLARE @sql1 nvarchar(max);
	SELECT @sql1 = N'
	DROP TABLE if exists ' + @output ;  
	EXEC sp_executesql @sql1

	-- Create a Table with the raw merged data. 
	DECLARE @sql2 nvarchar(max);
	SELECT @sql2 = N'
		SELECT *
		INTO ' + @output + '
	    FROM ' + @input;
	EXEC sp_executesql @sql2

    -- Loops to fill missing values for the categorical variables with the mode. 
	DECLARE @name1 NVARCHAR(100)
	DECLARE @getname1 CURSOR

	SET @getname1 = CURSOR FOR
	SELECT variableName FROM  [dbo].[Stats] WHERE [type] IN ('varchar', 'nvarchar', 'int', 'char')

	OPEN @getname1
	FETCH NEXT
	FROM @getname1 INTO @name1
	WHILE @@FETCH_STATUS = 0
	BEGIN	

		-- Check whether the variable contains a missing value. We perform cleaning only for variables containing NULL. 
		DECLARE @missing1 varchar(50)
		DECLARE @sql10 nvarchar(max);
		DECLARE @Parameter10 nvarchar(500);
		SELECT @sql10 = N'
			SELECT @missingOUT1 = missing
			FROM (SELECT count(*) - count(' + @name1 + ') as missing
			      FROM ' + @output + ') as t';
		SET @Parameter10 = N'@missingOUT1 varchar(max) OUTPUT';
		EXEC sp_executesql @sql10, @Parameter10, @missingOUT1=@missing1 OUTPUT;

		IF (@missing1 > 0)
		BEGIN 
			-- Replace categorical variables with the mode. 
			DECLARE @sql11 nvarchar(max)
			SET @sql11 = 
			'UPDATE ' + @output + '
			SET ' + @name1 + ' = ISNULL(' + @name1 + ', (SELECT mode FROM [dbo].[Stats] WHERE variableName = ''' + @name1 + '''))';
			EXEC sp_executesql @sql11;
		END;
		FETCH NEXT
		FROM @getname1 INTO @name1
	END
	CLOSE @getname1
	DEALLOCATE @getname1

    -- Loops to fill continous variables with the mean.  
	DECLARE @name2 NVARCHAR(100)
	DECLARE @getname2 CURSOR

	SET @getname2 = CURSOR FOR
	SELECT variableName FROM  [dbo].[Stats] WHERE type IN ('float')

	OPEN @getname2
	FETCH NEXT
	FROM @getname2 INTO @name2
	WHILE @@FETCH_STATUS = 0
	BEGIN	

		-- Check whether the variable contains a missing value. We perform cleaning only for variables containing NULL. 
		DECLARE @missing2 varchar(50)
		DECLARE @sql20 nvarchar(max);
		DECLARE @Parameter20 nvarchar(500);
		SELECT @sql20 = N'
			SELECT @missingOUT2 = missing
			FROM (SELECT count(*) - count(' + @name2 + ') as missing
			      FROM ' + @output + ') as t';
		SET @Parameter20 = N'@missingOUT2 varchar(max) OUTPUT';
		EXEC sp_executesql @sql20, @Parameter20, @missingOUT2=@missing2 OUTPUT;

		IF (@missing2 > 0)
		BEGIN 
			-- Replace numeric variables with '-1'. 
			DECLARE @sql21 nvarchar(max)
			SET @sql21 = 
			'UPDATE ' + @output + '
			SET ' + @name2 + ' = ISNULL(' + @name2 + ', (SELECT mean FROM [dbo].[Stats] WHERE variableName = ''' + @name2 + '''))';
			EXEC sp_executesql @sql21;
		END;
		FETCH NEXT
		FROM @getname2 INTO @name2
	END
	CLOSE @getname2
	DEALLOCATE @getname2

    -- Set loanId as the primary key. 
	/**
	DECLARE @sql3 nvarchar(max);
	SELECT @sql3 = N'
	ALTER TABLE ' + @output + ' ADD CONSTRAINT [PK_Cleaned] PRIMARY KEY([loanId])'
     EXEC sp_executesql @sql3
	 **/
END
GO
/****** Object:  StoredProcedure [dbo].[get_column_info]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[get_column_info] @input varchar(max)
AS 
BEGIN
	-- Create an empty table to store the serialized column information. 
	DROP TABLE IF EXISTS [dbo].[Column_Info]    
	CREATE TABLE [dbo].[Column_Info](
		[id] [varchar](200) NOT NULL, 
	    [value] [varbinary](max), 
			CONSTRAINT unique_id2 UNIQUE(id)
		) 

	-- Get the database name.
	DECLARE @database_name varchar(max) = db_name()

    -- Serialize the column information. 
	EXECUTE sp_execute_external_script @language = N'R',
     					               @script = N' 
########################################################################################################################################## 
## Setting up
########################################################################################################################################## 
# Define the connection string
connection_string <- paste("Driver=SQL Server;Server=localhost;Database=", database_name, ";Trusted_Connection=true;", sep="")

# Point to the input data set.
Merged_Features_sql <- RxSqlServerData(sqlQuery = sprintf( "SELECT *  FROM [%s]", input),
					                   connectionString = connection_string, 
					                   stringsAsFactors = T)

########################################################################################################################################## 
## Get the variable information
########################################################################################################################################## 
column_info <- rxCreateColInfo(Merged_Features_sql, sortLevels = T)

########################################################################################################################################## 
## Save the column info to SQL Server 
########################################################################################################################################## 
# Open an Odbc connection with SQL Server. 
OdbcModel <- RxOdbcData(table = "Column_Info", connectionString = connection_string) 
rxOpen(OdbcModel, "w") 

# Write the model to SQL.  
rxWriteObject(OdbcModel, "Column Info", column_info) 

'
, @params = N'@input varchar(max), @database_name varchar(max)'
, @input = @input
, @database_name = @database_name 
;
END
GO
/****** Object:  StoredProcedure [dbo].[Initial_Run_Once_R]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Proc [dbo].[Initial_Run_Once_R]

as 

--EXEC MoveDataFromTemp

print 'compute_stats'
EXEC merging 'Loan', 'Borrower', 'Merged'

print 'compute_stats'
EXEC compute_stats 'Merged'

print 'fill_NA_mode_mean'
EXEC fill_NA_mode_mean 'Merged', 'Merged_Cleaned'

print 'splitting'
EXEC splitting 'Merged_Cleaned'

print 'compute_bins'
EXEC compute_bins 'SELECT Merged_Cleaned.*, isBad = CASE WHEN loanStatus IN (''Current'') THEN ''0'' ELSE ''1'' END
                                 FROM  Merged_Cleaned JOIN Hash_Id ON Merged_Cleaned.loanId = Hash_Id.loanId 
                                 WHERE hashCode <= 70'

print 'feature_engineering'
EXEC feature_engineering 'Merged_Cleaned', 'Merged_Features'

print 'get_column_info'
EXEC get_column_info 'Merged_Features'

print 'train_model'
EXEC train_model 'Merged_Features'

print 'score'
EXEC score 'SELECT * FROM Merged_Features WHERE loanId NOT IN (SELECT loanId from Hash_Id WHERE hashCode <= 70)', 'Predictions_Logistic'

print 'evaluate'
EXEC evaluate 'Predictions_Logistic'

print 'compute_operational_metrics'
EXEC compute_operational_metrics 'Predictions_Logistic'

print 'apply_score_transformation'
EXEC apply_score_transformation 'Predictions_Logistic', 'Scores'

print 'compute_stats'

--- Production pipeline

EXEC merging 'Loan_Prod', 'Borrower_Prod', 'Merged_Prod'
EXEC fill_NA_mode_mean 'Merged_Prod', 'Merged_Cleaned_Prod'
EXEC feature_engineering 'Merged_Cleaned_Prod', 'Merged_Features_Prod'
EXEC score 'SELECT * FROM Merged_Features_Prod', 'Predictions_Logistic_Prod' 
exec apply_score_transformation 'Predictions_Logistic_Prod', 'Scores_Prod'
--ALTER TABLE Scores_Prod DROP COLUMN isBad

GO
/****** Object:  StoredProcedure [dbo].[merging]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[merging] @loan_input varchar(max), @borrower_input varchar(max), @output varchar(max)
AS
BEGIN

-- Drop the output table if it already exists. 
	DECLARE @sql1 nvarchar(max);
	SELECT @sql1 = N'
		DROP TABLE if exists ' + @output;
	EXEC sp_executesql @sql1

-- We create empty column loanStatus if it does not exist (typically for Production). 
	DECLARE @sql2 nvarchar(max);
	SELECT @sql2 = N'
	 IF NOT EXISTS( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = ''' + @loan_input + '''  AND COLUMN_NAME = ''loanStatus'')
	 BEGIN 
		ALTER TABLE ' + @loan_input + ' ADD loanStatus varchar(60) NULL
	 END'; 
	EXEC sp_executesql @sql2

-- Perform the inner join.
	DECLARE @sql3 nvarchar(max);
	SELECT @sql3 = N'
		SELECT loanId, [date], purpose, isJointApplication, loanAmount, term, interestRate, monthlyPayment,
               grade, loanStatus, '+ @borrower_input + '.* 
	    INTO ' + @output + '
	    FROM ' + @loan_input + ' JOIN ' + @borrower_input + '
	    ON ' + @loan_input + '.memberId = ' + @borrower_input + '.memberId ';
	EXEC sp_executesql @sql3
;
END
GO
/****** Object:  StoredProcedure [dbo].[MoveDataFromTemp]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	CREATE Proc [dbo].[MoveDataFromTemp] 

	AS 
	
	
	TRUNCATE TABLE Borrower
	INSERT INTO Borrower

	SELECT
		CAST(memberId as int) as  memberId,
		CAST(residentialState as nvarchar(255)) as  residentialState,
		CAST(yearsEmployment as nvarchar(255)) as  yearsEmployment,
		CAST(homeOwnership as nvarchar(255)) as homeOwnership ,
		CAST(annualIncome as float) as  annualIncome,
		CAST(incomeVerified as nvarchar(255)) as  incomeVerified,
		CAST(dtiRatio as float) as  dtiRatio,
		CAST(lengthCreditHistory as int) as  lengthCreditHistory,
		CAST(numTotalCreditLines as int) as numTotalCreditLines ,
		CAST(numOpenCreditLines as int) as  numOpenCreditLines,
		CAST(numOpenCreditLines1Year as int) as  numOpenCreditLines1Year,
		CAST(revolvingBalance as float) as  revolvingBalance,
		CAST(revolvingUtilizationRate as float) as  revolvingUtilizationRate,
		CAST(numDerogatoryRec as int) as  numDerogatoryRec,
		CAST(numDelinquency2Years as int) as  numDelinquency2Years,
		CAST(numChargeoff1year as int) as  numChargeoff1year,
		CAST(numInquiries6Mon as int) as  numInquiries6Mon
	FROM 
		BorrowerTemp

	DROP TABLE BorrowerTemp

	TRUNCATE TABLE Loan

	INSERT INTO Loan


	SELECT 
		 CAST(loanId as int) as loanId ,
		  CAST(memberId as int) as memberId ,
		  CAST(date as nvarchar(255)) as date ,
		  CAST(purpose as nvarchar(255)) as  purpose,
		  CAST(isJointApplication as nvarchar(255)) as  isJointApplication,
		  CAST(loanAmount as float) as loanAmount ,
		  CAST(term as nvarchar(255)) as term ,
		  CAST(interestRate as float) as  interestRate,
		  CAST(monthlyPayment as float) as monthlyPayment ,
		  CAST(grade as nvarchar(255)) as  grade,
		  CAST(loanStatus as nvarchar(255)) as loanStatus
	FROM 
		LoanTemp

	DROP TABLE LoanTemp
GO
/****** Object:  StoredProcedure [dbo].[score]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[score] @inquery varchar(max),
						 @output varchar(max)

AS 
BEGIN

	--	Get the current database name.
	DECLARE @database_name varchar(max) = db_name();

	-- Compute the predictions. 
	EXECUTE sp_execute_external_script @language = N'R',
     					               @script = N' 

##########################################################################################################################################
##	Connection String
##########################################################################################################################################
# Define the connection string. 
connection_string <- paste("Driver=SQL Server;Server=localhost;Database=", database_name, ";Trusted_Connection=true;", sep="")

########################################################################################################################################## 
## Get the column information
########################################################################################################################################## 
# Create an Odbc connection with SQL Server using the name of the table storing the bins. 
OdbcModel <- RxOdbcData(table = "Column_Info", connectionString = connection_string) 

# Read the model from SQL.  
column_info <- rxReadObject(OdbcModel, "Column Info") 

########################################################################################################################################## 
## Get the trained model
########################################################################################################################################## 
# Create an Odbc connection with SQL Server using the name of the table storing the model. 
OdbcModel <- RxOdbcData(table = "Model", connectionString = connection_string) 

# Read the model from SQL.  
logistic_model <- rxReadObject(OdbcModel, "Logistic Regression")

# Set the Compute Context to SQL.
sql <- RxInSqlServer(connectionString = connection_string)
rxSetComputeContext(sql) 

##########################################################################################################################################
## Point to the data set to score and use the column_info list to specify the types of the features
##########################################################################################################################################
Test_sql <- RxSqlServerData(sqlQuery = sprintf("%s", inquery),
							connectionString = connection_string,
							colInfo = column_info)

##########################################################################################################################################
## Logistic Regression scoring
##########################################################################################################################################
# The prediction results are directly written to a SQL table.
if(length(logistic_model) > 0){

  Predictions_Logistic_sql <- RxSqlServerData(table = output, connectionString = connection_string, stringsAsFactors = T)

  rxPredict(logistic_model, 
            data = Test_sql, 
            outData = Predictions_Logistic_sql, 
            overwrite = T, 
            type = "response",
            extraVarsToWrite = c("isBad", "loanId"))

 # If you used rxLogisticRegression, the argument type = "response" should be removed.  
 # You should also load the MicrosoftML library before using rxPredict: library("MicrosoftML")
 }	 		   	   	   
'
, @params = N' @inquery nvarchar(max), @database_name varchar(max), @output varchar(max)' 
, @inquery = @inquery
, @database_name = @database_name
, @output = @output 
;
END
GO
/****** Object:  StoredProcedure [dbo].[splitting]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[splitting]  @input varchar(max)
AS
BEGIN
  DROP TABLE if exists [dbo].[Hash_Id]
  CREATE TABLE [dbo].[Hash_Id](
	[loanId] [int] NOT NULL Primary Key,
	[hashCode] [bigint] NOT NULL) 

  DECLARE @sql nvarchar(max);
  SET @sql = N'
  INSERT INTO Hash_Id
  SELECT loanId, ABS(CAST(CAST(HashBytes(''MD5'', CAST(loanId AS varchar(20))) AS VARBINARY(64)) AS BIGINT) % 100) AS hashCode
  FROM ' + @input;

  EXEC sp_executesql @sql


;
END
GO
/****** Object:  StoredProcedure [dbo].[train_model]    Script Date: 1/26/2018 7:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[train_model]  @dataset_name varchar(max) 
AS 
BEGIN

	-- Create an empty table to be filled with the trained models.
    DROP TABLE if exists  [dbo].[Model]
	CREATE TABLE [dbo].[Model](
		[id] [varchar](200) NOT NULL, 
	    [value] [varbinary](max), 
			CONSTRAINT unique_id3 UNIQUE(id)
		) 
		

	-- Get the database name.
	DECLARE @database_name varchar(max) = db_name();

	-- Train the model on the training set.	
	EXECUTE sp_execute_external_script @language = N'R',
									   @script = N' 

##########################################################################################################################################
##	Connection String
##########################################################################################################################################
# Define the connection string
connection_string <- paste("Driver=SQL Server;Server=localhost;Database=", database_name, ";Trusted_Connection=true;", sep="")

########################################################################################################################################## 
## Get the column information.
########################################################################################################################################## 
# Create an Odbc connection with SQL Server using the name of the table storing the bins. 
OdbcModel <- RxOdbcData(table = "Column_Info", connectionString = connection_string) 

# Read the model from SQL.  
column_info <- rxReadObject(OdbcModel, "Column Info") 

# Set the Compute Context to SQL for faster training.
sql <- RxInSqlServer(connectionString = connection_string)
rxSetComputeContext(sql)

##########################################################################################################################################
##	Point to the training set and use the column_info list to specify the types of the features.
##########################################################################################################################################
Train_sql <- RxSqlServerData(sqlQuery = sprintf( "SELECT [%s].* FROM [%s] JOIN Hash_Id ON [%s].loanId = Hash_Id.loanId WHERE hashCode <= 70", dataset_name, dataset_name, dataset_name),
                             connectionString = connection_string,  
						     colInfo = column_info) 

##########################################################################################################################################
##	Specify the variables to keep for the training 
##########################################################################################################################################
# We remove the id variables, date, residentialState, term, and all the numeric variables that were later bucketed. 
  variables_all <- rxGetVarNames(Train_sql)
  variables_to_remove <- c("loanId", "memberId", "loanStatus", "date", "residentialState", "term",
                           "loanAmount", "interestRate", "monthlyPayment", "annualIncome", "dtiRatio", "lengthCreditHistory",
                           "numTotalCreditLines", "numOpenCreditLines", "numOpenCreditLines1Year", "revolvingBalance",
                           "revolvingUtilizationRate", "numDerogatoryRec", "numDelinquency2Years", "numChargeoff1year", 
                           "numInquiries6Mon")
  
  training_variables <- variables_all[!(variables_all %in% c("isBad", variables_to_remove))]
  formula <- as.formula(paste("isBad ~", paste(training_variables, collapse = "+")))

##########################################################################################################################################
## Train the Logistic Regression Model and Save the model in SQL Server
##########################################################################################################################################
logistic_model <- rxLogit(formula = formula,
                          data = Train_sql,
                          reportProgress = 0, 
                          initialValues = NA)

## rxLogisticRegression function from the MicrosoftML library can be used instead. 
## The regularization weights (l1Weight and l2Weight) can be modified for further optimization.
## The included selectFeatures function can select a certain number of optimal features based on a specified method.
## the number of variables to select and the method can be further optimized.
  
#library("MicrosoftML")
#logistic_model <- rxLogisticRegression(formula = formula,
#                                       data = Train_sql,
#                                       type = "binary",
#                                       l1Weight = 0.7,
#                                       l2Weight = 0.7,
#                                       mlTransforms = list(selectFeatures(formula, mode = mutualInformation(numFeaturesToKeep = 10))))
   
########################################################################################################################################## 
## Save the model in SQL Server 
########################################################################################################################################## 
# Set the compute context to local for tables exportation to SQL.  
rxSetComputeContext("local") 

# Open an Odbc connection with SQL Server. 
OdbcModel <- RxOdbcData(table = "Model", connectionString = connection_string) 
rxOpen(OdbcModel, "w") 

# Write the model to SQL.  
rxWriteObject(OdbcModel, "Logistic Regression", logistic_model) 

##########################################################################################################################################
## Write the coefficients of the variables to a SQL table in decreasing order of absolute value of coefficients. 
##########################################################################################################################################
# Get the table. 
coeff <- logistic_model$coefficients
Logistic_Coeff <- data.frame(variable = names(coeff), coefficient = coeff, row.names = NULL)
Logistic_Coeff <- Logistic_Coeff[order(abs(Logistic_Coeff$coefficient), decreasing = T),]

# Export it to SQL. 
Logistic_Coeff_sql <- RxSqlServerData(table = "Logistic_Coeff", connectionString = connection_string)
rxDataStep(inData = Logistic_Coeff, outFile = Logistic_Coeff_sql, overwrite = TRUE)
'

, @params = N' @dataset_name varchar(max), @database_name varchar(max)'
, @dataset_name =  @dataset_name
, @database_name = @database_name

;
END


/****** Object:  StoredProcedure [dbo].[Initial_Run_Once_R]    Script Date: 1/24/2018 8:00:13 PM ******/
SET ANSI_NULLS ON
GO
