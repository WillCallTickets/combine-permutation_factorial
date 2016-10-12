USE [Sts9Store]
GO

/****** Object:  UserDefinedFunction [dbo].[FACT]    Script Date: 09/30/2016 15:04:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:      
-- CreateDate:	?
-- Title:		FACT
-- Description: Part of the Combination/Permutation/Factorial Calculator
--	TODO learn more about this
--	https://www.mathsisfun.com/combinatorics/combinations-permutations.html
--	http://stattrek.com/online-calculator/combinations-permutations.aspx
--	http://weblogs.sqlteam.com/davidm/archive/2003/11/11/475.aspx
-- =============================================

CREATE FUNCTION [dbo].[FACT](

	@Factorial AS TINYINT
	
) 
RETURNS FLOAT
AS

BEGIN

    DECLARE @a FLOAT

    IF @Factorial<=170
    BEGIN
    
        SET		@a = 1
        SELECT	@a = @a * Number
        FROM	master..spt_values
        WHERE	Number BETWEEN 1 AND @Factorial
				AND Type='P'
				
    END

    RETURN @a
    
END

GO

